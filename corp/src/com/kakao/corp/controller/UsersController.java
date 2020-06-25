package com.kakao.corp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.action.user.LoginAction;
import com.kakao.corp.action.user.LoginProcAction;
import com.kakao.corp.action.user.LogoutAction;
import com.kakao.corp.action.user.SignupAction;
import com.kakao.corp.action.user.SignupProcAction;
import com.kakao.corp.action.user.UserProfileUploadAction;
import com.kakao.corp.action.user.UserProfileUploadProcAction;
import com.kakao.corp.action.user.UserUpdateAction;
import com.kakao.corp.action.user.UserUpdateProcAction;
import com.kakao.corp.action.user.UsersUsernameCheck;


@WebServlet("/user")
public class UsersController extends HttpServlet {
	private static final String TAG = "UsersController : ";
	private static final long serialVersionUID = 1L;
       
    
    public UsersController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cmd = request.getParameter("cmd");
		System.out.println(TAG + "doProcess : " + cmd);
		Action action = router(cmd);
		action.execute(request, response);
	}
	
	private Action router(String cmd) {
		if (cmd.equals("login")) {
			return new LoginAction();
		} else if(cmd.equals("loginProc")) {
			return new LoginProcAction();
		} else if (cmd.equals("signup")) {
			return new SignupAction();
		} else if (cmd.equals("signupProc")) {
			return new SignupProcAction();
		} else if (cmd.equals("usernameCheck")) {
			return new UsersUsernameCheck();
		} else if (cmd.equals("logout")){
			return new LogoutAction();
		} else if (cmd.equals("update")){
			return new UserUpdateAction();
		} else if (cmd.equals("updateProc")){
			return new UserUpdateProcAction();
		} else if (cmd.equals("profileUpload")){
			return new UserProfileUploadAction();
		} else if (cmd.equals("profileUploadProc")){
			return new UserProfileUploadProcAction();
		}
		return null;
		
	}
}

