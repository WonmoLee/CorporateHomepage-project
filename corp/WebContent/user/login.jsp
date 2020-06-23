<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ include file="/include/header.jsp" %> --%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Kakao</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="css/login.css">
</head>
<body class="loginbg">
<div class="container">
	<h1 class="title">Login</h1>
	
	<form action="/corp/user?cmd=loginProc">
		<div class="namepw input-group mb-3 mx-auto mt-5">
  			<input type="text" class="form-control rounded-pill" placeholder="아이디를 입력해주세요." id="usr" name="username">
		</div>
		
		<div class="namepw input-group mb-3 mx-auto">
  			<input type="password" class="form-control rounded-pill" placeholder="패스워드를 입력해주세요." id="pwd" name="password">
		</div>
		<br/>
		<button type="submit" class="btn btn-warning" style="margin-left: 305px;">로그인</button>
		<a href=""><img height="38px" src="/corp/static/img/kakao_login_medium_narrow.png"></img></a>
	</form>
	
</div>
	
</body>
</html>