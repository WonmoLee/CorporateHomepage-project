<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">

</head>
<body>
<%@ include file="/include/header.jsp" %>
	<section class="introMain">
			<div class="introTitle">
				${corpintro.title}
			</div>
			<div class="introImg">
				<img class="img" src="${corpintro.img}" alt="${corpintro.title}" style="width:1160px;height:494px;">
			</div>
			<div class="introContent">
				<p>${corpintro.contentTitle}</p>
				<b>${corpintro.content}</b>
			</div>
	</section>	
	<%@ include file="/include/footer.jsp" %>
</body>
</html>