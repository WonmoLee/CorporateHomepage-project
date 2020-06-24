package com.kakao.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.corpIntro.CorpIntroAction;
import com.kakao.corp.action.corpIntro.CorpIntroUpdateAction;
import com.kakao.corp.action.corpIntro.CorpIntroUpdateProcAction;

@WebServlet("/intro")
public class CorpIntroController extends HttpServlet {
	private static final String TAG = "CorpIntroController : ";
	private static final long serialVersionUID = 1L;
       
    public CorpIntroController() {
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
			if (cmd.equals("intro")) {
				return new CorpIntroAction();
			}else if (cmd.equals("introUpdate")) {
				return new CorpIntroUpdateAction();
			}else if (cmd.equals("introUpdateProc")) {
				return new CorpIntroUpdateProcAction();
			}
			return null;
			
		}
	
}