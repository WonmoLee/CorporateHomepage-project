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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  </style>
</head>
<body>
		<a href="#contents" class="skip">본문바로가기</a>
		<%@ include file="/include/header.jsp" %>
		
		<section>
			<div id="demo" class="carousel slide" data-ride="carousel">
			
			  <ul class="carousel-indicators">
			    <li data-target="#demo" data-slide-to="0" class="active"></li>
			    <li data-target="#demo" data-slide-to="1"></li>
			    <li data-target="#demo" data-slide-to="2"></li>
			    <li data-target="#demo" data-slide-to="3"></li>
			  </ul>
			  
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img class="img" src="/corp/static/img/slide1.jpg" alt="slide1">
			      <div class="txt1">
				  일상에 필요한 모든 것들을 연결해주는<br>당신과 가장 가까운 인공지능을 만나보세요.
				  </div>
			    </div>
			    <div class="carousel-item">
			      <img class="img" src="/corp/static/img/slide2.jpg" alt="slide2">
			      <div class="txt2">
				  카카오는 새로운 연결을 통해<br>더 편리하고 즐거운 세상을 꿈꿉니다.
				  </div>
			    </div>
			    <div class="carousel-item">
			      <img class="img" src="/corp/static/img/slide3.png" alt="slide3">
			      <div class="txt1">
				  끊임없이 이동하는 우리의 삶 속 카카오는 어떤 모습일까요?<br>이동에 대한 카카오의 모든 이야기들을 담았습니다.
				  </div>
			    </div>
			    <div class="carousel-item">
			      <img class="img" src="/corp/static/img/slide4.png" alt="slide4">
			      <div class="txt2">
				  카카오로 연결된 수많은 파트너들과,<br>그들과 함께 더 나은 세상을 만들어나가고자 하는 <br> 카카오의 진심을 전합니다.
				  </div>
			    </div>
			  </div>
			  
			  <!-- Left and right controls -->
			  <a class="carousel-control-prev" href="#demo" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#demo" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
			</div>
		</section>
		<%@ include file="/include/footer.jsp" %>
</body>
</html>