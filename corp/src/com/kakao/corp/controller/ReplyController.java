package com.kakao.corp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.nav.support.reply.VoiceOfCustReplyDeleteProcAction;
import com.kakao.corp.action.nav.support.reply.VoiceOfCustReplyWriteProcAction;

@WebServlet("/reply")
public class ReplyController extends HttpServlet {
	private static final String TAG = "ReplyController : ";
	private static final long serialVersionUID = 1L;
       
    public ReplyController() {
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
			if (cmd.equals("vocReplyWriteProc")) {
				return new VoiceOfCustReplyWriteProcAction();
			} else if (cmd.equals("vocReplyDeleteProc")) {
				return new VoiceOfCustReplyDeleteProcAction();
			}
			
			return null;
		}
}
