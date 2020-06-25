<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>

<meta charset="UTF-8">

<link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/kakao.css">

</head>
<body>
<%@ include file="../include/header.jsp" %>
	<section class="introMain">
			<div class="introTitle">
				${corpintro.title}
			</div>
			<div class="introImg">
				<img src="static/img/intro.jpg" alt="" >
			</div>
			<div class="introContent">
				<b>${corpintro.content}</b>
			</div>
			<div class="update">
			<a href="/corp/intro?cmd=introUpdate">수정</a><br/>
			</div>
	</section>	
	<footer>
	<%@ include file="../include/footer.jsp" %>
	</footer>
</body>
</html>