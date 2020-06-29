package com.kakao.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.nav.CorpIntroAction;
import com.kakao.corp.action.nav.CorpIntroUpdateAction;
import com.kakao.corp.action.nav.CorpIntroUpdateProcAction;
import com.kakao.corp.action.nav.ServiceAction;
import com.kakao.corp.action.nav.ServiceCategoryAction;
import com.kakao.corp.action.nav.SocialAction;
import com.kakao.corp.action.nav.SocialUpdateAction;
import com.kakao.corp.action.nav.VoiceOfCustAction;
import com.kakao.corp.action.nav.VoiceOfCustUpdateAction;
import com.kakao.corp.action.nav.VoiceOfCustUpdateProcAction;
import com.kakao.corp.action.nav.VoiceOfCustWriteAction;
import com.kakao.corp.action.nav.VoiceOfCustWriteProcAction;

@WebServlet("/menu")
public class NavController extends HttpServlet {
	private static final String TAG = "NavController : ";
	private static final long serialVersionUID = 1L;

    public NavController() {
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
			//고객의소리 이동 
			}else if (cmd.equals("voiceOfCust")) {
				return new VoiceOfCustAction();
			//고객의소리 글쓰기 이동
			}else if (cmd.equals("voiceOfCustWrite")) {
				return new VoiceOfCustWriteAction();
			}else if (cmd.equals("voiceOfCustWriteProc")) {
				return new VoiceOfCustWriteProcAction();
			}else if (cmd.equals("voiceOfCustUpdate")) {
				return new VoiceOfCustUpdateAction();
			}else if (cmd.equals("voiceOfCustUpdateProc")) {
				return new VoiceOfCustUpdateProcAction();
			//서비스 카테고리별 보기
			}else if (cmd.equals("service")) {
				return new ServiceAction();
			}else if (cmd.equals("serviceCategory")) {
				return new ServiceCategoryAction();
			//소셜 
			}else if (cmd.equals("social")) {
				return new SocialAction();
			}else if (cmd.equals("socialUpdate")) {
				return new SocialUpdateAction();
			}
			return null;
			
		}

} 
