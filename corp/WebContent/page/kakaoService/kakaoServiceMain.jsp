<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">
<script src = "/corp/js/kakaoService.js"></script>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<section>
	<div class="serviceMainImg">
		<img class="img" src="${corpServiceTitles.img}" style="width:1920px;height:480px;" alt="${corpServiceTitles.title}">
	</div>
	<div class="serviceMainTitle">
		<p class="svcMT">${corpServiceTitles.title}</p>
		<p class="svcMC">${corpServiceTitles.content}</p>
	</div>
	<div></div>
	<div class="sv_category">
		<select name="category" onchange= "category(this.value)">
		    <option value="전체">전체</option>
		    <option value="포털">포털</option>
		    <option value="커뮤니케이션">커뮤니케이션</option>
		    <option value="콘텐츠">콘텐츠</option>
		    <option value="커머스">커머스</option>
		    <option value="게임">게임</option>
		    <option value="핀테크">핀테크</option>
		    <option value="모빌리티_라이프">모빌리티&라이프</option>
		    <option value="소셜임팩트">소셜임팩트</option>
		</select>
	<div class="service__list">
	<ul class = "category__list">
	<c:forEach var = "corpService" items="${corpServices}">
		<li><img src="${corpService.img}" width="80px" height="80px">
		<h4>${corpService.name}</h4>
		<p>${corpService.text}</p>
		<br/>
		</li>
	</c:forEach>
	</ul>
	</div>
	</div>
</section>
<%@ include file="/include/footer.jsp" %>
</body>
</html> 