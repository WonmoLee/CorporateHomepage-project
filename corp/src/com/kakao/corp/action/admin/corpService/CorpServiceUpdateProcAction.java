package com.kakao.corp.action.admin.corpService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpServiceContent;
import com.kakao.corp.model.CorpServiceTitle;
import com.kakao.corp.repository.CorpServiceRepository;
import com.kakao.corp.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CorpServiceUpdateProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mainTitle = "";
		String realPath = request.getServletContext().getRealPath("/static/img");
		String fileName1 = "";
		String fileName2 = "";
		String contextPath = request.getServletContext().getContextPath();
		String titleImg = "";
		String contentImg = "";
		String mainContent = "";
		String category = "";
		String name = "";
		String text = "";
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request,
					realPath,
					1024*1024*2,
					"UTF-8",
					new DefaultFileRenamePolicy()
					);
			mainTitle = multi.getParameter("mainTitle");
			fileName1 = multi.getFilesystemName("titleImg");
			mainContent = multi.getParameter("mainContent");
			fileName2 = multi.getFilesystemName("contentImg");
			category = multi.getParameter("category");
			name = multi.getParameter("name");
			text = multi.getParameter("text");
			titleImg = contextPath + "/static/img/" + fileName1;
			contentImg = contextPath + "/static/img/" + fileName2;
			
			CorpServiceTitle corpServiceTitle = CorpServiceTitle.builder()
					.img(titleImg)
					.title(mainTitle)
					.content(mainContent)
					.build();
			
			CorpServiceContent corpServiceContent = CorpServiceContent.builder()
					.img(contentImg)
					.category(category)
					.name(name)
					.text(text)
					.build();
			
			CorpServiceRepository corpServiceRepository = CorpServiceRepository.getInstance();
			int result1 = corpServiceRepository.serviceUpdate1(corpServiceTitle);
			int result2 = corpServiceRepository.serviceUpdate2(corpServiceContent);
			System.out.println("resul1 : " + result1);
			System.out.println("resul2 : " + result2);
			if (result1 == 1 && result2 == 1) {
				
				Script.href("수정에 성공하셨습니다.","/corp/service?cmd=serviceMain" , response);
			}
				Script.back("수정에 실패하였습니다.", response);
		} catch (Exception e) {
			
		}
	}
}
