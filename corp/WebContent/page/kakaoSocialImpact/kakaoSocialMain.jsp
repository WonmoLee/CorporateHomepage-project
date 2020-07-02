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

<div class="social_root"> <a href="/corp/home?cmd=main">홈</a> > 소셜임팩트 </div>


<div style ="padding-bottom : 30px">
<img src = "static/img/social.png">
 <br/>
</div>

<div class="con_wrap" style="display: flex; max-width: 1080px;
							 margin : 0 auto; justify-content : center;
							 margin-bottom: 50px " >
	<div style = "margin-right: 50px">
	<h4 style="font-size:18px;font-weight:bold;padding-bottom: 20px;">${social1.title}</h4>
	<p style="width:500px;font-size:15px;padding-bottom:10px;">${social1.content}</p>
	<img src = "${social1.img}"	width="500" height="280"></img>
	</div>
	
	
	
	<div>
	<h4 style="font-size: 18px;font-weight:bold;padding-bottom: 20px;">${social2.title}</h4>
	<p style="width:500px;font-size:15px;padding-bottom:10px;">${social2.content}</p>
	<img src = "${social2.img}" width ="500" height = "280"></img>
	</div>
</div>

<%@ include file="/include/footer.jsp" %>
</body>
</html> 