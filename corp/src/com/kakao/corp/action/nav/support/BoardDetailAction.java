package com.kakao.corp.action.nav.support;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.VoiceOfCustBoard;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.Script;


public class BoardDetailAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(
				request.getParameter("id") == null ||
				request.getParameter("id").equals("")
		  ) {
			Script.back("잘못된 접근입니다.", response);
			return;
		}
		
		int boardId = Integer.parseInt(request.getParameter("id"));
		BoardRepository boardRepository =BoardRepository.getInstance();
		

		
		
		// Board, User (해당 게시물의 글과 작성자)
		VoiceOfCustBoard board = boardRepository.findById(boardId);
		// Reply, User (해당 게시물의 댓글과 댓글의 작성자) 복수
		
		System.out.println("board : " + board);
		if(board != null) {
			request.setAttribute("detailDto", board);
			RequestDispatcher dis = 
					request.getRequestDispatcher("test/testDetail.jsp");
			dis.forward(request, response);
		} else {
			Script.back("잘못된 접근입니다.", response);
		}
	}
}