package com.kakao.corp.action.home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.HomeText;
import com.kakao.corp.repository.HomeRepository;

public class HomeMainAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HomeRepository homeRepository =
				HomeRepository.getInstance();

		HomeText homeText1 = homeRepository.homeText(1);
		HomeText homeText2 = homeRepository.homeText(2);
		HomeText homeText3 = homeRepository.homeText(3);

		request.setAttribute("homeText1", homeText1);
		request.setAttribute("homeText2", homeText2);
		request.setAttribute("homeText3", homeText3);

		//캐러셀 이미지 들고오기
		HomeText ChomeText1 = homeRepository.homeText(4);
		HomeText ChomeText2 = homeRepository.homeText(5);
		HomeText ChomeText3 = homeRepository.homeText(6);
		HomeText ChomeText4 = homeRepository.homeText(7);

		request.setAttribute("ChomeText1", ChomeText1);
		request.setAttribute("ChomeText2", ChomeText2);
		request.setAttribute("ChomeText3", ChomeText3);
		request.setAttribute("ChomeText4", ChomeText4);

		HomeText homeText4 = homeRepository.homeText(8);
		HomeText homeText5 = homeRepository.homeText(9);
		HomeText homeText6 = homeRepository.homeText(10);

		request.setAttribute("homeText4", homeText4);
		request.setAttribute("homeText5", homeText5);
		request.setAttribute("homeText6", homeText6);
		
		RequestDispatcher dis = request.getRequestDispatcher("/page/home.jsp");
		dis.forward(request, response);
	}
}
