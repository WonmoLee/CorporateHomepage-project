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

<div> <a href = " ">홈</a> > 소셜임팩트 </div>


<div style ="padding-bottom : 30px">
<img src = "static/img/social.png">
 <br/>
</div>
<div style="float:left; margin-left: 200px;">
<h4>${socail.title}</h4>
<p>${socail.content}</p>
<img src = "//t1.kakaocdn.net/kakaocorp/pw/socialimpact/subtop_together.jpg" 
width="" height=""></img>
</div>



<div style="float:right; margin-right: 200px">
<h4>${socail2.title}</h4>
<p>${socail2.content}</p>
<img src = "//t1.kakaocdn.net/kakaocorp/pw/socialimpact/subtop_makers.jpg"></img>
</div>
<!-- <a href="/corp/menu?cmd=socialUpdate">수정</a><br/> -->


<%@ include file="/include/footer.jsp" %>
</body>
</html> 