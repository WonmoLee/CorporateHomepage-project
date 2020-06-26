package com.kakao.corp.action.nav;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.repository.CorpIntroRepository;

public class CorpIntroUpdateAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//유효성 검사
		//이동

		CorpIntroRepository corpintroRepository = CorpIntroRepository.getInstance();

		CorpIntro corpintro = corpintroRepository.intro();

		request.setAttribute("corpintro", corpintro);

		RequestDispatcher dis = 
				request.getRequestDispatcher("/kakaoInfo/corpIntroUpdate.jsp");
		dis.forward(request, response);

	}
}