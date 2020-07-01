package com.kakao.corp.action.home.kakaoSupport;

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
		int page = Integer.parseInt(request.getParameter("page"));
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		
		List<VoiceOfCustBoard> vocBoards = boardRepository.vocFindAll(page);

		for (VoiceOfCustBoard vocBoard : vocBoards) {
			String preview = HtmlParser.getContentPreview(vocBoard.getContent());
			vocBoard.setContent(preview);
		}
		
		request.setAttribute("vocBoards", vocBoards);
		
		boolean isLast = false;
		int count = boardRepository.count();
		if(count <= (page*7)+7) isLast = true;
		request.setAttribute("isLast", isLast);
		
		RequestDispatcher dis = request.getRequestDispatcher("/page/kakaoSupport/supportMain.jsp");
		dis.forward(request, response);
	}
}
