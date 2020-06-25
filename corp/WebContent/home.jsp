<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>KAKAO</title>

<meta charset="UTF-8">
<meta content="website" property="og:type"  />
<meta content='kakaocorp.com' property='og:site_name'/>
<meta content='//www.kakaocorp.com/' property='og:url'/>
<meta content='ko_KR' property='og:locale'/>
<meta content='en_US' property='og:locale:alternate'/>
<meta content="Kakao" property='og:title'/>
<meta content='Connect Everything - 새로운 연결, 더 나은 세상' property='og:description'/>
<meta content="//t1.kakaocdn.net/kakaocorp/corp_thumbnail/Kakao.png" property="og:image"/>
<meta name="naver-site-verification" content="6171ab3d716f1b32969a13e4f5b9475b2f4dd42c"/>

<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">

</head>
<body>
		<a href="#contents" class="skip">본문바로가기</a>
		<%@ include file="/include/header.jsp" %>
		
		<section class="visual">
			<h2 class="hide">캐러셀 영역</h2>
			<a href="#a" class="prev">이전</a>		
			<a href="#a" class="next">다음</a>
			<div class="control">
				<div>
				<ul>
				<li><a href="#a"></a></li>
				<li><a href="#a"></a></li>
				<li><a href="#a"></a></li>
				<li><a href="#a"></a></li>
				</ul>
				</div>	
			</div>
			<div class="con">
				<div class="slide1">
					<div class="txt">
					일상에 필요한 모든 것들을 연결해주는<br>당신과 가장 가까운 인공지능을 만나보세요.
					</div>
				</div>
			</div>
		</section>
		<%@ include file="/include/footer.jsp" %>
</body>
</html>