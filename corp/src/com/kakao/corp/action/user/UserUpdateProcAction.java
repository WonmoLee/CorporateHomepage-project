package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.Users;
import com.kakao.corp.repository.UsersRepository;
import com.kakao.corp.util.SHA256;
import com.kakao.corp.util.Script;

public class UserUpdateProcAction implements Action{
@Override
public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.유효성 검사
		HttpSession session = request.getSession();
		
		Users sessionUser = (Users)session.getAttribute("principal");
		if (session.getAttribute("principal") == null ) {
			Script.getMessage("잘못된 접근입니다.", response);
			return;
		}
		
		if
		(	
			request.getParameter("password").equals("") ||
			request.getParameter("password") == null ||

			request.getParameter("email").equals("") ||
			request.getParameter("email") == null ||

			request.getParameter("address").equals("") ||
			request.getParameter("address") == null ||
			
			request.getParameter("userBirth").equals("") ||
			request.getParameter("userBirth") == null
			
		) {
			Script.getMessage("잘못된 접근입니다.", response);
			return; 
		}
		//파라메터 받기
		int id = sessionUser.getId();
		
		String rawpassword = request.getParameter("password");
		String password = SHA256.encodeSha256(rawpassword);
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String userBirth = request.getParameter("userBirth");
		
		// user 오브젝트 변환
		Users user = Users.builder()
				.id(id)
				.password(password)
				.email(email)
				.userBirth(userBirth)
				.address(address)
				.build();
		
		//DB
		UsersRepository usersRepository =
				UsersRepository.getInstance();
		
		int result = usersRepository.update(user);
		
		if (result == 1 ) {
			Script.href("수정에 성공하였습니다.", "index.jsp", response);
		}else {
			Script.back("수정에 실패하였습니다.", response);
		}
	}
}
