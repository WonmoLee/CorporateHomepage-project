package com.kakao.corp.action.nav;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.Service;
import com.kakao.corp.repository.ServiceRepository;

public class ServiceAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServiceRepository serviceRepository =
				ServiceRepository.getInstance();
		
		List<Service> services = serviceRepository.findByAll();
		
		request.setAttribute("services", services);
		
		
		RequestDispatcher dis =
				request.getRequestDispatcher("service/service.jsp");
		dis.forward(request, response);
		
		
	}
}
