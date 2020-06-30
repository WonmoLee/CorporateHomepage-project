package com.kakao.corp.action.admin.corpSocialImpact;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpSocial;
import com.kakao.corp.repository.CorpSocialRepository;

public class CorpSocialImpactUpdateAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CorpSocialRepository corpSocialRepository = 
				CorpSocialRepository.getInstance();

		CorpSocial social1 = corpSocialRepository.social();
		CorpSocial social2 = corpSocialRepository.social2();

		request.setAttribute("social1", social1) ;
		request.setAttribute("social2", social2) ;
		
		RequestDispatcher dis = request.getRequestDispatcher("/page/admin/corpSocialImpact/corpSocialImpactUpdate.jsp");
		dis.forward(request, response);
		
		System.out.println("social : "+ social1);
		System.out.println("social : "+ social2);
		
	}
}
