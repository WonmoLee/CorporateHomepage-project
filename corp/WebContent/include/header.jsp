<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
	<header>
		<h1><a href="/corp/home?cmd=main"><img src="/corp/static/img/logo.png"></a></h1>
		<h2 class="hide">대메뉴</h2>
		<nav class="lnb">
			<ul>
			<li><a href="/corp/intro?cmd=intro"><span>카카오</span></a></li>
			<li><a href="/corp/service?cmd=serviceMain"><span>서비스</span></a></li>
			<li><a href="/corp/social?cmd=socialMain"><span>소셜임팩트</span></a></li>
			<li><a href="/corp/support?cmd=voiceOfCust&page=0"><span>고객지원</span></a></li>
			<li><a href="https://careers.kakao.com/index" target="_blank"><span>인재영입</span></a></li>
			</ul>
		</nav>
		<h2 class="hide"></h2>
		<nav class="unb">
			<c:choose>
				<c:when test="${sessionScope.principal.userRole eq 'ADMIN'}">
					<ul class="list_lang">
					<li><a href="/corp/admin?cmd=adminPage"> 관리자 페이지 </a></li>
					<li><a href="/corp/user?cmd=update"> 회원정보수정 </a></li>
					<li><a href="/corp/user?cmd=logout"> 로그아웃 </a></li>
					<li class="profileImg"><a href="/corp/user?cmd=profileUpload">
							<img onerror="this.src='/corp/static/img/userProfile.png'" src = "${sessionScope.principal.userProfile}"/>
						</a>
					</li>
					</ul>
				</c:when>
				<c:when test="${sessionScope.principal.userRole eq 'USER'}">
					<ul class="list_lang">
					<li><a href="/corp/user?cmd=update"> 회원정보수정 </a></li>
					<li><a href="/corp/user?cmd=logout"> 로그아웃 </a></li>
					<li class="profileImg"><a href="/corp/user?cmd=profileUpload">
							<img onerror="this.src='/corp/static/img/userProfile.png'" src = "${sessionScope.principal.userProfile}"/>
						</a>
					</li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="list_lang">
					<li><a href="/corp/user?cmd=login"> 로그인 </a></li>
					<li><a href="/corp/user?cmd=signup"> 회원가입 </a></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</nav>
		<hr/>
	</header>