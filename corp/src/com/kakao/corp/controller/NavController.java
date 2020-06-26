package com.kakao.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.nav.kakaoIntro.CorpIntroAction;
import com.kakao.corp.action.nav.kakaoIntro.CorpIntroUpdateAction;
import com.kakao.corp.action.nav.kakaoIntro.CorpIntroUpdateProcAction;
import com.kakao.corp.action.nav.kakaoService.CorpServiceAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustDeleteProcAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustDetailAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustPostUserUpdateAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustPostUserUpdateProcAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustUserWriteAction;
import com.kakao.corp.action.nav.kakaoSupport.VoiceOfCustUserWriteProcAction;

@WebServlet("/menu")
public class NavController extends HttpServlet {
	private static final String TAG = "CorpIntroController : ";
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
			System.out.println("분기테스트" + cmd);
			if (cmd.equals("intro")) {
				return new CorpIntroAction();
			}else if(cmd.equals("service")) {
				return new CorpServiceAction();
			}else if (cmd.equals("introUpdate")) {
				return new CorpIntroUpdateAction();
			}else if (cmd.equals("introUpdateProc")) {
				return new CorpIntroUpdateProcAction();
			}else if (cmd.equals("voiceOfCust")) {
				return new VoiceOfCustAction();
			}else if (cmd.equals("voiceOfCustWrite")) {
				return new VoiceOfCustUserWriteAction();
			}else if (cmd.equals("voiceOfCustWriteProc")) {
				return new VoiceOfCustUserWriteProcAction();
			}else if (cmd.equals("vocPostUpdate")) {
				return new VoiceOfCustPostUserUpdateAction();
			}else if (cmd.equals("vocPostUpdateProc")) {
				return new VoiceOfCustPostUserUpdateProcAction();
			}else if (cmd.equals("vocDetail")) {
				return new VoiceOfCustDetailAction();
			}else if (cmd.equals("vocDeleteProc")) {
				return new VoiceOfCustDeleteProcAction();
			}else if (cmd.equals("vocReplyDeleteProc")) {
				return new VoiceOfCustDeleteProcAction();
			}
			return null;

		}

} 
