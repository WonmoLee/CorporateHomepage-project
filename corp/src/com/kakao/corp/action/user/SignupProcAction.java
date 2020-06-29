package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.RoleType;
import com.kakao.corp.model.Users;
import com.kakao.corp.repository.UsersRepository;
import com.kakao.corp.util.SHA256;
import com.kakao.corp.util.Script;

public class SignupProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//유효성 검사
		if(
		   request.getParameter("username").equals("") ||
		   request.getParameter("username") == null ||
		   
		   request.getParameter("password").equals("") ||
		   request.getParameter("password") == null ||
		   
		   request.getParameter("phoneNumber").equals("") ||
		   request.getParameter("phoneNumber") == null ||
		   
		   request.getParameter("email").equals("") ||
		   request.getParameter("email") == null ||
		   
		   request.getParameter("userBirth").equals("") ||
		   request.getParameter("userBirth") == null ||
		   
		   request.getParameter("address").equals("") ||
		   request.getParameter("address") == null 
		   
		   
		   ) { return;	}
		
		//파라메터 받기
		String username = request.getParameter("username");
		String rawpassword = request.getParameter("password");
		String password = SHA256.encodeSha256(rawpassword);
		String carrier = request.getParameter("carrier");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String userBirth = request.getParameter("userBirth");
		String userRole = RoleType.USER.toString();
		
		//오브젝트 변환
		Users user = Users.builder()
				.username(username)
				.password(password)
				.carrier(carrier)
				.phoneNumber(phoneNumber)
				.email(email)
				.address(address)
				.userBirth(userBirth)
				.userRole(userRole)
				.build();
		
		//DB연결
		UsersRepository usersRepository = 
				UsersRepository.getInstance();
		
		int result = usersRepository.save(user);
		
		//4.index.jsp로이동 (성공시)
		if (result == 1) {
			Script.href("회원가입 성공", "/corp/home?cmd=main", response);
		}else {
			Script.back("회원가입에 실패하였습니다.", response);
		}
	}
}
