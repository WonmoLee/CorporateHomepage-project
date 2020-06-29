package com.kakao.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustAction;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustDeleteProcAction;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustDetailAction;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustPostUserUpdateAction;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustPostUserUpdateProcAction;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustUserWriteAction;
import com.kakao.corp.action.home.kakaoSupport.VoiceOfCustUserWriteProcAction;

@WebServlet("/support")
public class KakaoSupportController extends HttpServlet {
	private static final String TAG = "KakaoSupportController : ";
	private static final long serialVersionUID = 1L;
       
    public KakaoSupportController() {
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
		if (cmd.equals("voiceOfCust")) {
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
