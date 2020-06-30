package com.kakao.corp.action.admin.corpSocialImpact;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpSocial;
import com.kakao.corp.repository.CorpSocialRepository;
import com.kakao.corp.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CorpSocialImpactUdateProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String realPath = request.getServletContext().getRealPath("/static/img");
		String contentPath = request.getServletContext().getContextPath();
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request,
					realPath,
					1024*1024*2,
					"UTF-8",
					new DefaultFileRenamePolicy()
					);
			
			String title1 = multi.getParameter("title1");
			String content1 = multi.getParameter("content1");
			
			
			String title2 = multi.getParameter("title2");
			String content2 = multi.getParameter("content2");
			
			String fileName1 = multi.getFilesystemName("infoImg1");
			String fileName2 = multi.getFilesystemName("infoImg2");
			
			String infoImg1 = contentPath + "/static/img/" + fileName1;			
			String infoImg2 = contentPath + "/static/img/" + fileName2;
			
			System.out.println("contentPath : " + contentPath);
			System.out.println("fileName1 : " + fileName1);
			System.out.println("fileName2 : " + fileName2);
			
			CorpSocial corpSocial1 = CorpSocial.builder()
					.title(title1)
					.img(infoImg1)
					.content(content1)
					.build();
			
			CorpSocial corpSocial2 = CorpSocial.builder()
					.title(title2)
					.img(infoImg2)
					.content(content2)
					.build();
			
			CorpSocialRepository corpSocialRepository =
					CorpSocialRepository.getInstance();
			
			int result1 = -1;
			//파일이름이 널이면  
			if (fileName1 == null) {
				  result1 = corpSocialRepository.socialTextUpdate(corpSocial1,  "SOCIAL1");		
			}else {
				  result1 = corpSocialRepository.socialUpdate(corpSocial1, "SOCIAL1");
			}
			
			int result2 = -1;
			if (fileName2 == null) {
				  result2 = corpSocialRepository.socialTextUpdate(corpSocial2,  "SOCIAL2");		
			}else {
				  result2 = corpSocialRepository.socialUpdate(corpSocial2, "SOCIAL2");
			}
			
			
			
			
			if(result1 == 1 && result2 == 1) {
				
				Script.href("수정에 성공하셨습니다.", "/corp/social?cmd=socialMain", response);
				
			}else {
				
				Script.back("수정에 실패하였습니다.", response);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	}
}
