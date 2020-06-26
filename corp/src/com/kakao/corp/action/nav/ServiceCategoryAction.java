package com.kakao.corp.action.nav;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kakao.corp.action.Action;
import com.kakao.corp.model.Service;
import com.kakao.corp.repository.ServiceRepository;

public class ServiceCategoryAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		
		ServiceRepository serviceRepository = 
				ServiceRepository.getInstance();
		
		if (request.getParameter("value").equals("전체")) {
			List<Service> services = serviceRepository.findByAll();
			
			String servicesJson = gson.toJson(services);
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/Json; charset = utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(servicesJson);
			
		}else {
			List<Service> services = serviceRepository.findByCategory(request.getParameter("value"));		
			
			String  servicesJson = gson.toJson(services);
			
			System.out.println(servicesJson);
			
			response.setCharacterEncoding("utf-8");
			response.setContentType("application/Json; charset = utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(servicesJson);
		}
		
		

		
		
	}
}
