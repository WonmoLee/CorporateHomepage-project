package com.kakao.corp.action.nav;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.repository.SocailRepository;

public class SocialAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SocailRepository socailRepository =
				SocailRepository.getInstance();
		
		//카카오같이가치
		CorpIntro socail = socailRepository.social();
		//카카오메이커스
		CorpIntro socail2 = socailRepository.social2();

		request.setAttribute("socail", socail);
		request.setAttribute("socail2", socail2);
		
		System.out.println(socail);
		System.out.println(socail2);

		RequestDispatcher dis =
				request.getRequestDispatcher("/social/social.jsp");
		
		dis.forward(request, response);
		
		}
}
