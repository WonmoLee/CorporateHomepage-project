<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ include file="/include/header.jsp" %> --%>

<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style>

	#id{
		width : 100px;
		padding : 50;
	}	
 
<
</style>



<meta charset="UTF-8">
<title>Kakao signup</title>
<link rel="stylesheet" href="css/login.css">

</head>

<body>

	<h1 class="title sw">kakao</h1>
	<!-- 테두리  -->
	<div class = "join">
	
	<form action="user?cmd=signupProc" method="post" onsubmit="return validate()">
		<!--아이디 -->
		<div class="sw inFor" style ="float: none; margin: 0 auto">
			<h4 style="width: 330px;">ID <button type="button" class = "checkId" onclick = "checkUsername()">중복확인</button></h4>
  			<input class = "inFor" type="text" placeholder="아이디를 입력하세요." id = "username" name = "username">
  			
			<br><br>
			
		<!-- 비밀번호 -->
			<h4>password</h4>
  			<input class = "inFor" type="password"  placeholder="비밀 번호를 입력하세요" name = "password" id = "password" ><br/><br>
  			<input class = "inFor" type="password" placeholder="비밀 번호 확인" ><br/>
			<br>
		
		<!-- 이메일 -->
			<h4>Email</h4>
			<input class = "inFor" type = "text"  placeholder="이메일을 입력해주세요" name = "email" id = "email"/><br>
			
		<!--생년월일 -->
			<h4>생년월일</h4>    
			<input type = "date" name = "userBirth" id = "userBirth"><br><br>
		
		<!-- 주소 -->
			<h4>주소 <span style="float:right;"><input type = "button" style="border-radius:100px; background-color: transparent;" onClick="goPopup();" value="주소검색"/></span></h4> 
			<input class = "inFor" type="text"   name ="address" id = "address" required readonly/>
			
			<br><br><br><br>
		
			<button type = "submit" style="width: 300px; height: 40px; background-color: #F0D700; border : 0px" > 회원가입</button>
	
		</div>
	</form>
</div>
</body>
<script src="/corp/js/signup.js"></script>
</html>
