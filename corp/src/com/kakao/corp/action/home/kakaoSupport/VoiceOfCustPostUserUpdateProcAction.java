package com.kakao.corp.action.home.kakaoSupport;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.VoiceOfCustBoard;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustPostUserUpdateProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("principal") == null) {
			Script.getMessage("잘못된 접근입니다.", response);
			return; // 여기서 return이 었으면 코드를 아래를 타고 내려간다.
		}

		if (request.getParameter("id") == null || request.getParameter("id").equals("")
				|| request.getParameter("title") == null || request.getParameter("title").equals("")
				|| request.getParameter("content") == null || request.getParameter("content").equals("")) {
			return;
		}
		
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		VoiceOfCustBoard vocBoard = VoiceOfCustBoard.builder()
				.id(id)
				.title(title)
				.content(content)
				.build();
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		int result = boardRepository.vocPostUpdate(vocBoard);

		if (result == 1) {
			Script.href("수정 성공", "/corp/support?cmd=vocDetail&id=" + id, response);
		} else {
			Script.back("수정에 실패하였습니다.", response);
		}
	}
}