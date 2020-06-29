package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;

public class AdminPageAction implements Action{
		@Override
		public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher dis = request.getRequestDispatcher("user/adminPage.jsp");
			dis.forward(request, response);
		}
}
