package com.kakao.corp.action.home.kakaoSocial;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpSocial;
import com.kakao.corp.repository.CorpSocialRepository;

public class CorpSocialMainAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CorpSocialRepository corpSocialRepository = CorpSocialRepository.getInstance();

		CorpSocial socail = corpSocialRepository.social();
		CorpSocial socail2 = corpSocialRepository.social2();

		request.setAttribute("socail", socail);
		request.setAttribute("socail2", socail2);

		System.out.println(socail);
		System.out.println(socail2);
		
		RequestDispatcher dis = request.getRequestDispatcher("/page/kakaoSocialImpact/kakaoSocialMain.jsp");
		dis.forward(request, response);
	}

}
