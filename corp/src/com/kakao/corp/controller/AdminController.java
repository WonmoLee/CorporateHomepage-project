package com.kakao.corp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.admin.AdminPageAction;
import com.kakao.corp.action.admin.corpIntro.CorpIntroUpdateAction;
import com.kakao.corp.action.admin.corpIntro.CorpIntroUpdateProcAction;
import com.kakao.corp.action.admin.corpService.CorpServiceUpdateAction;
import com.kakao.corp.action.admin.corpService.CorpServiceUpdateProcAction;
import com.kakao.corp.action.admin.corpSocialImpact.CorpSocialImpactUpdateProcAction;
import com.kakao.corp.action.admin.corpSocialImpact.CorpSocialImpactUpdateAction;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final String TAG = "AdminController : ";
	private static final long serialVersionUID = 1L;
       
    public AdminController() {
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
		if (cmd.equals("adminPage")) {
			return new AdminPageAction();
		} else if (cmd.equals("introUpdate")){
			return new CorpIntroUpdateAction();
		} else if (cmd.equals("introUpdateProc")) {
			return new CorpIntroUpdateProcAction();
		} else if (cmd.equals("serviceUpdate")){
			return new CorpServiceUpdateAction();
		} else if (cmd.equals("serviceUpdateProc")){
			return new CorpServiceUpdateProcAction();
		} else if (cmd.equals("socialImpactUpdate")){
			return new CorpSocialImpactUpdateAction();
		} else if (cmd.equals("socialImpactUpdateProc")){
			return new CorpSocialImpactUpdateProcAction();
		} 
		return null;
	}
}
