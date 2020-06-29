package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.util.Script;

public class UserProfileUploadAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션 체크 
		HttpSession session = request.getSession();

		if(session.getAttribute("principal") == null ) {
			Script.getMessage("잘못된 접근입니다.", response);
			return;
		}

		RequestDispatcher dis =
				request.getRequestDispatcher("/page/user/profileUpload.jsp");
		dis.forward(request, response);;
	}
}