package com.kakao.corp.action.nav.kakaoIntro;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.repository.CorpIntroRepository;
import com.kakao.corp.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CorpIntroUpdateProcAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String title = "";
		String realPath = request.getServletContext().getRealPath("/static/img");
		String fileName = "";
		String contextPath = request.getServletContext().getContextPath();
		String infoImg = "";
		String content = "";
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request,
					realPath,
					1024*1024*2,
					"UTF-8",
					new DefaultFileRenamePolicy()
					);
			title = multi.getParameter("title");
			fileName = multi.getFilesystemName("infoImg");
			content = multi.getParameter("content");
			infoImg = contextPath + "/static/img/" + fileName;
			
			CorpIntro corpintro = CorpIntro.builder()
					.title(title)
					.img(infoImg)
					.content(content)
					.build();

			CorpIntroRepository corpintroRepository = CorpIntroRepository.getInstance();
			int result = corpintroRepository.introUpdate(corpintro);
			System.out.println("이미지 가져왓냐? : " + result);
			if(result == 1) {

				Script.href("수정에 성공하셨습니다.","/corp/menu?cmd=intro" , response);
			}else if(result == -1) {
				Script.back("수정에 실패하였습니다.", response);
			}
		} catch (Exception e) {
			
		}
	}
}
