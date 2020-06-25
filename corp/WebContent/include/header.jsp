<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/kakao.css">
</head>
<body>
	<header>
		<h1><a href="/corp/home?cmd=main"><img alt="kakao" src="static/img/logo.png">Kakao</a></h1>
		<h2 class="hide">대메뉴</h2>
		<nav class="lnb">
			<ul>
			<li><a href="/corp/intro?cmd=intro"><span>카카오</span></a></li>
			<li><a href="#a"><span>투자정보</span></a></li>
			<li><a href="#a"><span>서비스</span></a></li>
			<li><a href="#a"><span>소셜임팩트</span></a></li>
			<li><a href="#a"><span>고객지원</span></a></li>
			<li><a href="#a"><span>인재영입</span></a></li>
			</ul>
		</nav>
		<h2 class="hide"></h2>
		<nav class="unb">
			<c:choose>
				<c:when test="${empty sessionScope.principal }">
					<ul class="list_lang">
					<li><a href="/corp/user?cmd=login"> 로그인 </a></li>
					<li><a href="/corp/user?cmd=signup"> 회원가입 </a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="list_lang">
					<li><a href="#a"> 글쓰기 </a></li>
					<li><a href="/corp/user?cmd=update"> 회원정보 수정 </a></li>
					<li><a href="/corp/user?cmd=logout"> 로그아웃 </a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</nav>
	</header>
</body>
</html>