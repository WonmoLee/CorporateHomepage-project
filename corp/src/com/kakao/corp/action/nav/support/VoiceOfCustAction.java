package com.kakao.corp.action.nav.support;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.VoiceOfCustBoard;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.HtmlParser;

public class VoiceOfCustAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		
		List<VoiceOfCustBoard> vocBoards = boardRepository.findAll();

		for (VoiceOfCustBoard vocBoard : vocBoards) {
			String preview = HtmlParser.getContentPreview(vocBoard.getContent());
			vocBoard.setContent(preview);
		}
		
		request.setAttribute("vocBoards", vocBoards);
		
		RequestDispatcher dis = request.getRequestDispatcher("support/question.jsp");
		dis.forward(request, response);
	}
}
