package com.kakao.corp.action.corpIntro;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.Corpintro;
import com.kakao.corp.repository.CorpintroRepository;
import com.kakao.corp.repository.UsersRepository;

public class CorpIntroAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			CorpintroRepository corpintroRepository =
					CorpintroRepository.getInstance();
			
			Corpintro corpintro = corpintroRepository.intro();
		
			request.setAttribute("corpintro", corpintro);
			
			RequestDispatcher dis = 
					request.getRequestDispatcher("/intro/corpIntro.jsp");
			dis.forward(request, response);
			
	}
}
