package com.kakao.corp.action.nav.kakaoService;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpService;
import com.kakao.corp.repository.CorpServiceRepository;

public class CorpServiceAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CorpServiceRepository corpServiceRepository = CorpServiceRepository.getInstance();

		List<CorpService> corpServices = corpServiceRepository.CorpServiceFindByAll();

		request.setAttribute("corpServices", corpServices);

		RequestDispatcher dis = request.getRequestDispatcher("kakaoService/kakaoServiceMain.jsp");
		dis.forward(request, response);


	}
}
