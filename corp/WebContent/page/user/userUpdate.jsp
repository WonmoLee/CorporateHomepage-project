<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Kakao</title>
<meta charset="UTF-8">
<link rel="shortcut icon"  href="static/img/titleIcon.png"  type="image/x-icon" />
<link rel="stylesheet" href="css/LoginSignup.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style>

	#id{
		width : 100px;
		padding : 50;
	}	
 

</style>
</head>
<body>

	<h1 class="title sw">kakao</h1>
	<!-- 테두리  -->
	<div class = "join">
	
	<form action="user?cmd=updateProc" method="post">
		<!--아이디 -->
		<div class="sw inFor" style ="float: none; margin: 0 auto">
			<h4 style="width: 330px;">ID</h4>
  			<input class = "inFor" type="text" value= "${sessionScope.principal.username}" id = "username" name = "username" readonly >
  			
			<br><br>
			
		<!-- 비밀번호 -->
			<h4>password</h4>
  			<input class = "inFor" type="password"  placeholder="비밀 번호를 입력하세요" name = "password" id = "password" ><br/><br>
  			<input class = "inFor" type="password" placeholder="비밀 번호 확인" ><br/>
			<br>
		<!-- 전화번호 -->	
			<h4>휴대전화</h4>
			<select name="carrier">
			<option value="SKT">SKT</option>
			<option value="LG">LG</option>
			<option value="KT">KT</option>
			</select>
			<input type="text" name="phoneNumber" id = "phoneNumber" value = "${sessionScope.principal.phoneNumber}" style="width: 255px;">
		
		<!-- 이메일 -->
			<h4>Email</h4>
			<input class = "inFor" type = "text"  value = "${sessionScope.principal.email}" name = "email" id = "email"/><br>
			
			
		<!--생년월일 -->
			<h4>생년월일</h4>    
			<input type = "date" name = "userBirth" id = "userBirth" value = "${sessionScope.principal.userBirth}"><br><br>
		
		<!-- 주소 -->
			<h4>주소 <span style="float:right;"><input type = "button" style="border-radius:100px; background-color: transparent;" onClick="goPopup();" value="주소검색"/></span></h4> 
			<input class = "inFor" type="text" value = "${sessionScope.principal.address}" name ="address" id = "address" required readonly/>
			
			<br><br><br><br>
		
			<button type = "submit" style="width: 300px; height: 40px; background-color: #F0D700; border : 0px" >수정하기</button>
	
		</div>
	</form>
</div>
</body>
<script src="/corp/js/signup.js"></script>
</html>

