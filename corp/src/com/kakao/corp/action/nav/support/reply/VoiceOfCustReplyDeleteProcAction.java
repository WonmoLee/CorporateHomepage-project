package com.kakao.corp.action.nav.support.reply;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.repository.ReplyRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustReplyDeleteProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("replyId") == null ||
				request.getParameter("replyId").equals("")) {
			return;
		}
			
		int replyId = Integer.parseInt(request.getParameter("replyId"));
		System.out.println("ReplyDeleteProcAction : replyId"+replyId);
		
		ReplyRepository replyRepository = ReplyRepository.getInstance();
		int result = replyRepository.vocDeleteById(replyId);
		System.out.println("result : " + result);
		Script.outText(result+"", response);
	}
}
