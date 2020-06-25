package com.kakao.corp.action.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.Users;
import com.kakao.corp.repository.UsersRepository;
import com.kakao.corp.util.Script;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UserProfileUploadProcAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String realPath = 
				request.getServletContext().getRealPath("/static/img");

		int id;
		String fileName = null;
		String contextPath = request.getServletContext().getContextPath();
		String userProfile = null; //db 변수

		try {
			MultipartRequest multi = new MultipartRequest(
					request,
					realPath,
					1024*1024*2,
					"UTF-8",
					new DefaultFileRenamePolicy()
					);
			fileName = multi.getFilesystemName("userProfile");

			System.out.println("fileName :" + fileName);

			id = Integer.parseInt(multi.getParameter("id"));

			userProfile = contextPath + "/static/img/" + fileName;

			UsersRepository usersRepository = 
					UsersRepository.getInstance();
			int result = usersRepository.profileUpdate(id, userProfile);

			if (result == 1) {

				HttpSession session = request.getSession();
				Users principal = usersRepository.findById(id);
				session.setAttribute("principal", principal);

				Script.href("사진변경이 완료되었습니다.","/corp/index.jsp", response);

			}else {
				Script.back("사진변경에 실패하셧습니다.", response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			Script.getMessage("오류 : " + e.getMessage(), response);
		}
	}

}