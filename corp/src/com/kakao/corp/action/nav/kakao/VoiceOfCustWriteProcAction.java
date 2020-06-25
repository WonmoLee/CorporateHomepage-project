package com.kakao.corp.action.nav.kakao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.Users;
import com.kakao.corp.model.VoiceOfCustBoard;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustWriteProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		if (session.getAttribute("principal") == null) {
			return;
		}
		
		if(
			request.getParameter("title") == null ||
			request.getParameter("title").equals("") ||
			
			request.getParameter("content") == null ||
			request.getParameter("content").equals("")
				) {
			Script.back("내용을 확인하세요", response);
			return;
		}
		//title 이랑 content, id값 받기
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Users principal = (Users)session.getAttribute("principal");
		
		//오브젝트 담고
		VoiceOfCustBoard voiceOfCustBoard =
				VoiceOfCustBoard.builder()
					.userId(principal.getId())
					.title(title)
					.content(content).build();
		
		BoardRepository boardRepository = 
				BoardRepository.getInstance();
		
		int result = boardRepository.VOCSave(voiceOfCustBoard);
		System.out.println(result);			
		if (result == 1) {
			Script.href("글쓰기 완료", "index.jsp", response);
			
		}else if(result == -1) {
			Script.back("글쓰기에 실패하였습니다.", response);
		}
		
	}
}
