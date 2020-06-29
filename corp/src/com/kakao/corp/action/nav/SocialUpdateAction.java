package com.kakao.corp.action.nav;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.repository.SocailRepository;

public class SocialUpdateAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SocailRepository socailRepository = 
				SocailRepository.getInstance();
		
		CorpIntro social1 = socailRepository.social();
		CorpIntro social2 = socailRepository.social2();
		
		request.setAttribute("social1", social1) ;
		request.setAttribute("social2", social2) ;
		
		
		RequestDispatcher dis =
				request.getRequestDispatcher("/social/socialUpdate.jsp");
		dis.forward(request, response);
	}

}
