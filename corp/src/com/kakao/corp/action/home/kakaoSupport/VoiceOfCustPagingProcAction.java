package com.kakao.corp.action.home.kakaoSupport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kakao.corp.action.Action;
import com.kakao.corp.dto.PagingDto;
import com.kakao.corp.model.VoiceOfCustBoard;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.HtmlParser;

public class VoiceOfCustPagingProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		
		List<VoiceOfCustBoard> vocBoards = boardRepository.vocFindAll(page);
		
		for (VoiceOfCustBoard vocBoard : vocBoards) {
			String preview = HtmlParser.getContentPreview(vocBoard.getContent());
			vocBoard.setContent(preview);
		}
		
		int count = boardRepository.vocCount();
		int vocLastPage = (count-1)/7; 
		
		System.out.println(page);
		System.out.println(vocLastPage);
		
		
		PagingDto pagingDto = PagingDto.builder()
				.vocBoards(vocBoards)
				.page(page)
				.vocLastPage(vocLastPage)
				.build();
		
		Gson gson = new Gson();
		String pagingDtoJson = gson.toJson(pagingDto);
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter pw = response.getWriter();
		
		pw.println(pagingDtoJson);
	}
}
