package com.kakao.corp.action.nav.support.reply;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kakao.corp.action.Action;
import com.kakao.corp.dto.VocReplyResponseDto;
import com.kakao.corp.model.VoiceOfCustReply;
import com.kakao.corp.repository.ReplyRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustReplyWriteProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedReader br = request.getReader();
		StringBuffer sb = new StringBuffer();
		String input = null;
		while((input = br.readLine()) != null) {
			sb.append(input);
		}
		Gson gson = new Gson();
		VoiceOfCustReply vocReply = gson.fromJson(sb.toString(), VoiceOfCustReply.class);
		System.out.println("제이슨이니?" + vocReply);
		System.out.println(sb.toString());
		// ReplyRepository 연결 - save(reply)
		ReplyRepository replyRepository = ReplyRepository.getInstance();
		int result = replyRepository.vocSave(vocReply);
		// save 성공하면 1, 실패하면0, -1
		if(result == 1) {
			List<VocReplyResponseDto> vocReplyDtos = replyRepository.vocFindAll(vocReply.getBoardId());
			String vocReplyDtosJson = gson.toJson(vocReplyDtos);
			Script.outJson(vocReplyDtosJson, response);
		}else {
			Script.outJson(result+"", response);
		}
	}
}
