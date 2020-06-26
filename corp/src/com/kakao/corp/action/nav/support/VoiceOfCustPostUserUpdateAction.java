package com.kakao.corp.action.nav.support;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.dto.VocBoardResponseDto;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustPostUserUpdateAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(
				request.getParameter("id") == null ||
				request.getParameter("id").equals("")
		  ) {
			Script.back("잘못된 접근입니다.", response);
			return;
		}
		
		int id = Integer.parseInt(request.getParameter("id"));
		BoardRepository boardRepository = BoardRepository.getInstance();
		VocBoardResponseDto vocBoardDto = boardRepository.vocFindById(id);
		if(vocBoardDto != null) {
			request.setAttribute("vocBoardDto", vocBoardDto);
			RequestDispatcher dis = request.getRequestDispatcher("/support/voiceOfCustPostUpdate.jsp");
			dis.forward(request, response);
		}else {
			Script.back("잘못된 접근입니다.", response);
		}
	}
}
