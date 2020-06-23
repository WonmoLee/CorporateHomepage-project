<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

<style>

	#id{
		width : 100px;
		padding : 50;
	}	
 
<


</style>
<script>
function goPopup(){
	var pop = window.open("/corp/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
	var tfAddress = document.querySelector("#roadFullAddr");
	tfAddress.value = roadFullAddr;
	
	// document.form.roadFullAddr.value = roadFullAddr;		
}
</script>


<meta charset="UTF-8">
<title>Kakao signup</title>
<link rel="stylesheet" href="css/login.css">

</head>

<body>

	<h1 class="title sw">kakao</h1>
	<!-- 테두리  -->
	<div class = "join">
	
	<form action="">
		<!--아이디 -->
		<div class="sw" style ="float: none; margin: 0 auto">
			<h4>ID <button onclick = ""  style= "width: 80px; width: 80px; border-radius:100px; background-color: transparent;" >중복확인</button></h4>   
  			<input class = "inFor" type="text" placeholder="아이디를 입력하세요.">
  			
			<br><br>
			
		<!-- 비밀번호 -->
			<h4>password</h4>
  			<input class = "inFor" type="password"  placeholder="비밀 번호(8자리 이상)" ><br/><br>
  			<input class = "inFor" type="password" placeholder="비밀 번호 확인" ><br/>
			<br>
			
		<!-- 이메일 -->
			<h4>Email</h4>
			<input class = "inFor" type = "text"  placeholder="이메일을 입력해주세요"/><br>	
			
		<!--생년월일 -->
			<h4>생년월일</h4>    
			<input type = "date"><br><br>
		
		<!-- 주소 -->
			<h4>주소 <span style="float:right;"><input type = "button" style="border-radius:100px; background-color: transparent;" onClick="goPopup();" value="주소검색"/></span></h4> 
			<input class = "inFor" type="text"   id="roadFullAddr"  name="roadFullAddr" readonly/>
			
			<br><br><br><br>
		
			<button style="width: 300px; height: 40px; background-color: #F0D700; border : 0px" > 회원가입</button>
	
		</div>
	</form>
</div>
</body>

</html>