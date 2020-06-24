package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.Users;
import com.kakao.corp.repository.UsersRepository;
import com.kakao.corp.util.SHA256;
import com.kakao.corp.util.Script;

public class LoginProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//유효성검사
		if (
			request.getParameter("username").equals("") ||
			request.getParameter("username") == null ||
			
			request.getParameter("password").equals("") ||
			request.getParameter("password") == null 
			
			) {
			Script.back("아이디와 패스워드를 입력해주세요", response);
			return;
		}
		
		//1.파라메터 받기
		String username = request.getParameter("username");
		String rawpassword = request.getParameter("password");
		String password = SHA256.encodeSha256(rawpassword);
		
		UsersRepository usersRepository =
				UsersRepository.getInstance();
		
		Users user = usersRepository.login(username, password);
		
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("principal", user);
			
			if (request.getParameter("remember") != null ) {
				Cookie cookie = new Cookie("remember", user.getUsername());
				response.addCookie(cookie);
			}
			else {
				Cookie cookie = new Cookie("remember", "");
				cookie.setMaxAge(0);  //쿠키 삭제
				response.addCookie(cookie);
			}
			Script.href("로그인 성공", "/corp/index.jsp", response);
			
		}else {
			Script.back("로그인에 실패하였습니다.", response);
		}
		
	}
}
