package com.kakao.corp.action.nav.kakaoSupport;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.repository.BoardRepository;
import com.kakao.corp.util.Script;

public class VoiceOfCustDeleteProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("principal") == null) {
			Script.getMessage("잘못된 접근입니다.", response);
			return; //여기서 return이 었으면 코드를 아래를 타고 내려간다.
		}
		
		if
		(
			request.getParameter("id") == null ||
			request.getParameter("id").equals("")			
		) {
			return;
		}
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		BoardRepository boardRepository = BoardRepository.getInstance();
		int result = boardRepository.vocDeleteById(id);
		PrintWriter out = response.getWriter();
		out.print(result);
	}
}
