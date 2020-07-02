package com.kakao.corp.action.admin.corpHome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpSocial;
import com.kakao.corp.model.HomeText;
import com.kakao.corp.repository.CorpSocialRepository;
import com.kakao.corp.repository.HomeRepository;
import com.kakao.corp.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class HomeUpdateProcAction implements Action {
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
			
			String title3 = multi.getParameter("title3");
			String content3 = multi.getParameter("content3");
			
			String title4 = multi.getParameter("title4");
			String content4 = multi.getParameter("content4");
			
			String title5 = multi.getParameter("title5");
			String content5 = multi.getParameter("content5");
			
			String title6 = multi.getParameter("title6");
			String content6 = multi.getParameter("content6");
			
			String fileName1 = multi.getFilesystemName("infoImg1");
			String fileName2 = multi.getFilesystemName("infoImg2");
			String fileName3 = multi.getFilesystemName("infoImg3");
			
			String infoImg1 = contentPath + "/static/img/" + fileName1;			
			String infoImg2 = contentPath + "/static/img/" + fileName2;
			String infoImg3 = contentPath + "/static/img/" + fileName3;
			
			
			HomeText homeText1 = HomeText.builder()
					.title(title1)
					.content(content1)
					.img(infoImg1)
					.build();
			
			HomeText homeText2 = HomeText.builder()
					.title(title2)
					.content(content2)
					.img(infoImg2)
					.build();
			
			HomeText homeText3 = HomeText.builder()
					.title(title3)
					.content(content3)
					.img(infoImg3)
					.build();
			
			HomeText homeText4 = HomeText.builder()
					.title(title4)
					.content(content4)
					.build();
			
			HomeText homeText5 = HomeText.builder()
					.title(title5)
					.content(content5)
					.build();
			
			HomeText homeText6 = HomeText.builder()
					.title(title6)
					.content(content6)
					.build();
			
			//------------------------------------------------------------------//
			//캐러셀 이미지 수정
			String Ctitle1 = multi.getParameter("Ctitle1");
			String Ctitle2 = multi.getParameter("Ctitle2");
			String Ctitle3 = multi.getParameter("Ctitle3");
			String Ctitle4 = multi.getParameter("Ctitle4");
			
			String CfileName1 = multi.getFilesystemName("CinfoImg1");
			String CfileName2 = multi.getFilesystemName("CinfoImg2");
			String CfileName3 = multi.getFilesystemName("CinfoImg3");
			String CfileName4 = multi.getFilesystemName("CinfoImg4");
			
			String CinfoImg1 = contentPath + "/static/img/" + CfileName1;			
			String CinfoImg2 = contentPath + "/static/img/" + CfileName2;
			String CinfoImg3 = contentPath + "/static/img/" + CfileName3;
			String CinfoImg4 = contentPath + "/static/img/" + CfileName4;
			
			HomeText ChomeText1 = HomeText.builder()
					.title(Ctitle1)
					.img(CinfoImg1)
					.build();

			HomeText ChomeText2 = HomeText.builder()
					.title(Ctitle2)
					.img(CinfoImg2)
					.build();
			
			HomeText ChomeText3 = HomeText.builder()
					.title(Ctitle3)
					.img(CinfoImg3)
					.build();
			
			HomeText ChomeText4 = HomeText.builder()
					.title(Ctitle4)
					.img(CinfoImg4)
					.build();
			
			HomeRepository homeRepository =	HomeRepository.getInstance();
			
			int result4 = homeRepository.homeTextUpdate(homeText4, 8);
			int result5 = homeRepository.homeTextUpdate(homeText5, 9);
			int result6 = homeRepository.homeTextUpdate(homeText6, 10);
			
			//파일이름이 널이면 기존에 있는사진 들고오기
			int result1 = -1;
			   
			if (fileName1 == null) {
				  result1 = homeRepository.homeTextUpdate(homeText1, 1);		
			}else {
				  result1 = homeRepository.homeUpdate(homeText1, 1);
			}
			
			
			int result2 = -1;
			if (fileName2 == null) {
				  result2 = homeRepository.homeTextUpdate(homeText2, 2);		
			}else {
				  result2 = homeRepository.homeUpdate(homeText2, 2);
			}
			
			
			int result3 = -1;
			if (fileName3 == null) {
				result3 = homeRepository.homeTextUpdate(homeText3, 3);		
			}else {
				result3 = homeRepository.homeUpdate(homeText3, 3);
			}
			
			
			int Cresult1 = -1;
			if (CfileName1 == null) {
				Cresult1 = homeRepository.homeTextUpdate(ChomeText1, 4);
			}else {
				Cresult1 = homeRepository.homeUpdate(ChomeText1, 4);
			}
			

			int Cresult2 = -1;
			if (CfileName2 == null) {
				Cresult2 = homeRepository.homeTextUpdate(ChomeText2, 5);
			}else {
				Cresult2 = homeRepository.homeUpdate(ChomeText2, 5);
			}
			

			int Cresult3 = -1;
			if (CfileName3 == null) {
				Cresult3 = homeRepository.homeTextUpdate(ChomeText3, 6);
			}else {
				Cresult3 = homeRepository.homeUpdate(ChomeText3, 6);
			}
			

			int Cresult4 = -1;
			if (CfileName4 == null) {
				Cresult4 = homeRepository.homeTextUpdate(ChomeText4, 7);
			}else {
				Cresult4 = homeRepository.homeUpdate(ChomeText4, 7);
			}
			
			if(result1 == 1 && result2 == 1 && result3 == 1 &&
			   result4 == 1 && result5 == 1 && result6 == 1 &&
			   Cresult1 == 1 && Cresult2 ==1 && Cresult3 ==1 && Cresult4 == 1) {
				
				Script.href("수정에 성공하셨습니다.", "/corp/home?cmd=main", response);
				
			}else {
				
				Script.back("수정에 실패하였습니다.", response);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
