package com.kakao.corp.action.home.kakaoService;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpService;
import com.kakao.corp.repository.CorpServiceRepository;

public class CorpServiceMainCategoryAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();

		CorpServiceRepository corpServiceRepository = CorpServiceRepository.getInstance();

		if (request.getParameter("value").equals("전체")) {
			List<CorpService> corpServices = corpServiceRepository.CorpServiceFindByAll();

			String corpServicesJson = gson.toJson(corpServices);

			response.setCharacterEncoding("utf-8");
			response.setContentType("application/Json; charset = utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(corpServicesJson);

		}else {
			List<CorpService> corpServices = corpServiceRepository.findByCategory(request.getParameter("value"));		

			String corpServicesJson = gson.toJson(corpServices);

			System.out.println(corpServicesJson);

			response.setCharacterEncoding("utf-8");
			response.setContentType("application/Json; charset = utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(corpServicesJson);
		}
	}
}
