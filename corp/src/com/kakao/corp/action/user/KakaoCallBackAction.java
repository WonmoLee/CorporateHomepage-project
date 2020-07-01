package com.kakao.corp.action.user;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.dto.KakaoProfile;
import com.kakao.corp.dto.KakaoToken;
import com.kakao.corp.model.RoleType;
import com.kakao.corp.model.Users;
import com.kakao.corp.repository.UsersRepository;
import com.kakao.corp.util.KakaoLogin;
import com.kakao.corp.util.Script;

public class KakaoCallBackAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codeError = request.getParameter("error");

		if(codeError != null) {
			Script.href("에러가 발생하였습니다. 홈으로 돌아갑니다.", "index.jsp", response);
			return;
		}

		String code = request.getParameter("code");
		System.out.println("카카오 인증 완료됨");
		System.out.println(code);


		// 토큰 요청하기
		KakaoToken kakaoToken = null;
		try {
			kakaoToken = KakaoLogin.getToken(code);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(kakaoToken);

		// 프로필 요청하기
		KakaoProfile kakaoProfile = null;
		try {
			kakaoProfile = KakaoLogin.getProfile(kakaoToken);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(kakaoProfile);

		// 회원가입 확인
		UsersRepository usersRepository = 
				UsersRepository.getInstance();

		Users principal = usersRepository.findByUsername(kakaoProfile.getId()+"_kakao");

		HttpSession session = request.getSession();

		if(principal != null) { // 기존회원이면 그냥 세션 넣고 로그인 진행

			session.setAttribute("principal", principal);
			Script.href("카카오 로그인 완료", "/corp/index.jsp", response);

		} else { 
			
				String username = kakaoProfile.getId() + "_kakao";

				Users user = Users.builder()
						.username(username)
						.password(UUID.randomUUID().toString())
						.carrier("?")
						.phoneNumber("?")
						.email(kakaoProfile.getKakao_account().getEmail())
						.userRole(RoleType.USER.toString())
						.address("?")
						.build();

				usersRepository.save(user);

				session.setAttribute("principal", user);

				Script.href("카카오 회원가입 및 로그인 완료", "/corp/index.jsp", response);
			}
		}
	}
