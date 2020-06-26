package com.kakao.corp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.nav.kakaoService.CorpServiceAction;
import com.kakao.corp.action.nav.kakaoService.CorpServiceMainCategoryAction;


@WebServlet("/service")
public class KakaoServiceController extends HttpServlet {
	private static final String TAG = "KakaoServiceController : ";
	private static final long serialVersionUID = 1L;
       
    
    public KakaoServiceController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String cmd = request.getParameter("cmd");
		System.out.println(TAG + "doProcess : " + cmd);
		Action action = router(cmd);
		action.execute(request, response);
	}
		private Action router(String cmd) {
			if (cmd.equals("serviceMain")) {
				return new CorpServiceAction();
			}else if (cmd.equals("serviceCategory")) {
				return new CorpServiceMainCategoryAction();
			}
			
			return null;
		}
	}

