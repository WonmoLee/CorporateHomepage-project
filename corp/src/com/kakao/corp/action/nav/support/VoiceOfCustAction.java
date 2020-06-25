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
		// 1. DB연결해서 Board 목록 다 불러와서
				BoardRepository boardRepository = 
						BoardRepository.getInstance();
				
				// 2. 3건만 페이징하여 가져오기
				List<VoiceOfCustBoard> boards = boardRepository.findAll();

				// 본문 짧게 가공하기
				for (VoiceOfCustBoard board : boards) {
					String preview = HtmlParser.getContentPreview(board.getContent());
					board.setContent(preview);
				}
				
				request.setAttribute("boards", boards);
				
				
		
		RequestDispatcher dis = request.getRequestDispatcher("test/boardTest.jsp");
		dis.forward(request, response);
	}
}
