package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.repository.UsersRepository;
import com.kakao.corp.util.Script;

public class UsersUsernameCheck implements Action{
@Override
public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		
		UsersRepository usersRepository = 
				UsersRepository.getInstance();
		
		int result = usersRepository.findUsername(username);
		
		Script.outText(result+"", response);
	}
}
