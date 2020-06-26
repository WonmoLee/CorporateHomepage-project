package com.kakao.corp.action.nav.kakaoIntro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.repository.CorpIntroRepository;
import com.kakao.corp.util.Script;

public class CorpIntroUpdateProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request에 title값과 content값 받기
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		//title 값과 content값 받기
		CorpIntro corpintro = CorpIntro.builder()
				.title(title)
				.content(content)
				.build();

		//repository 연결
		CorpIntroRepository corpintroRepository = CorpIntroRepository.getInstance();

		int result = corpintroRepository.introUpdate(corpintro);

		if(result == 1) {

			Script.href("수정에 성공하셨습니다.","/corp/menu?cmd=intro" , response);
		}else if(result == -1) {
			Script.back("수정에 실패하였습니다.", response);
		}
	}
}
