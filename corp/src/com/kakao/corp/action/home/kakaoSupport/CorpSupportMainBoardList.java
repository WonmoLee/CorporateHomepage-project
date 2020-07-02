package com.kakao.corp.action.home.kakaoSupport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kakao.corp.action.Action;
import com.kakao.corp.model.FAQBoard;
import com.kakao.corp.model.VoiceOfCustBoard;
import com.kakao.corp.repository.BoardRepository;

public class CorpSupportMainBoardList implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int page = Integer.parseInt(request.getParameter("page"));
		String value = request.getParameter("value");
		
		Gson gson = new Gson();

		BoardRepository boardRepository = BoardRepository.getInstance();

		if (value.equals("faq")) {
			List<FAQBoard> faqBoards = boardRepository.faqFindAll(0);

			String faqBoardsJson = gson.toJson(faqBoards);

			response.setCharacterEncoding("utf-8");
			response.setContentType("application/Json; charset = utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(faqBoardsJson);

		}else if(value.equals("voc")){
			List<VoiceOfCustBoard> vocBoards = boardRepository.vocFindAll(0);

			String vocBoardsJson = gson.toJson(vocBoards);

			System.out.println(vocBoardsJson);

			response.setCharacterEncoding("utf-8");
			response.setContentType("application/Json; charset = utf-8");
			PrintWriter pw = response.getWriter();
			pw.println(vocBoardsJson);
		}
	}
}