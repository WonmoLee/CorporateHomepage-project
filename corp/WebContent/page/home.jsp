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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">

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
			      <img class="img" src="${ChomeText1.img }" alt="slide1">
			      <div class="txt1" style = "width: 650px">
				  <h3>${ChomeText1.title }</h3>
			    	</div>
			    	</div>
			    <div class="carousel-item">
			      <img class="img" src="${ChomeText2.img }" alt="slide2">
			      <div class="txt2" style = "width: 650px">
				  <h3>${ChomeText2.title }</h3>
				  </div>
			    </div>
			    <div class="carousel-item">
			      <img class="img" src="${ChomeText3.img }" alt="slide3">
			      <div class="txt1" style = "width: 650px">
				  <h3>${ChomeText3.title }</h3>
				  </div>
			    </div>
			    <div class="carousel-item">
			      <img class="img" src="${ChomeText4.img }" alt="slide4">
			      <div class="txt2" style = "width: 650px">
				  <h3>${ChomeText4.title }</h3>
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
		
		<div style = "display : flex; max-width : 1600px;
					  margin : 0 auto; justify-content : center;
					  margin-bottom : 50px;  margin-top : 20px">

			<div style = "width : 33%">
				PRESS RELEASE<br/>
				<h5 style = "padding-top: 30px">${homeText4.title}</h5>
				<strong>${homeText4.content}</strong>
			</div>

			<div style = "width : 33%; margin-left: 40px">
				STOCK<br/>
				<h5 style = "padding-top: 30px">${homeText5.title}</h5>
				<strong>${homeText5.content}</strong>
			</div>

			<div style = "width : 33%; margin-left: 50px">
			PRIVACY POLICY<br/>
				<h5 style = "padding-top: 30px">${homeText6.title}</h5>
			</div>

		</div>

		<div style = "display : flex; max-width : 1080px;
					  margin : 0 auto; justify-content : center;
					  margin-bottom : 50px;  margin-top : 20px">

		<div style = "margin-right: 50px">
		<img src = "${homeText1.img}" width = "500px" height="280"/>
		<h5>${homeText1.title}</h5>
		<p>${homeText1.content}</p>
		</div>


		<div style = "margin-right: 50px">
		<img src = "${homeText2.img}" width = "500px" height="280"/>
		<h5>${homeText2.title}</h5>
		<p>${homeText2.content }</p>
		</div>

		<div>
		<img src = "${homeText3.img}" width = "500px" height="280"/>
		<h5>${homeText3.title}</h5>
		<p>${homeText3.content }</p>
		</div>

		</div>
		<%@ include file="/include/footer.jsp" %>
</body>
</html>