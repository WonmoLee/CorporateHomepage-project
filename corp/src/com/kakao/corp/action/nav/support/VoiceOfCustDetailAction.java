package com.kakao.corp.action.nav.support;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.dto.VocBoardResponseDto;
import com.kakao.corp.dto.VocDetailResponseDto;
import com.kakao.corp.dto.VocReplyResponseDto;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.repository.ReplyRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustDetailAction implements Action{
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
		BoardRepository boardRepository = BoardRepository.getInstance();
		ReplyRepository replyRepository = ReplyRepository.getInstance();
		
		int result = boardRepository.updateReadCount(boardId);

		if(result != 1) {
			Script.back("서버 오류!", response);
			return;
		}
		
		
		// Board, User (해당 게시물의 글과 작성자)
		VocBoardResponseDto vocBoardDto = boardRepository.vocFindById(boardId);
		// Reply, User (해당 게시물의 댓글과 댓글의 작성자) 복수
		
		List<VocReplyResponseDto> vocReplyDtos = replyRepository.vocFindAll(boardId);
		
		VocDetailResponseDto vocDetailDto = VocDetailResponseDto.builder()
					.vocBoardDto(vocBoardDto)
					.vocReplyDtos(vocReplyDtos)
					.build(); 
		
		if(vocDetailDto != null) {
			request.setAttribute("vocDetailDto", vocDetailDto);
			RequestDispatcher dis = request.getRequestDispatcher("/support/voiceOfCustDetail.jsp");
			dis.forward(request, response);
		} else {
			Script.back("잘못된 접근입니다.", response);
		}
	}
}

