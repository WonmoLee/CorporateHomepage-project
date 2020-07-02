package com.kakao.corp.action.home.kakaoSupport;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.FAQBoard;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.HtmlParser;

public class FAQAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		
		List<FAQBoard> faqBoards = boardRepository.faqFindAll(page);

		for (FAQBoard faqBoard : faqBoards) {
			String preview = HtmlParser.getContentPreview(faqBoard.getContent());
			faqBoard.setContent(preview);
		}
		
		request.setAttribute("faqBoards", faqBoards);
		
		int count = boardRepository.faqCount();
		int faqLastPage = (count-1)/5; 
		
		request.setAttribute("faqLastPage", faqLastPage);
		
		RequestDispatcher dis = request.getRequestDispatcher("/page/kakaoSupport/supportMain.jsp");
		dis.forward(request, response);
	}
}