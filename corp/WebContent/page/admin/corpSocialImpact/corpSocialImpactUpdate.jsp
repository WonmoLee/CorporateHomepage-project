  
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
<form action = "/corp/admin?cmd=socialImpactUpdateProc" method = "post" enctype = "multipart/form-data">

<input type ="text" value ="${social1.title}" id = "title1" name ="title1"/>
<input type ="text" value ="${social1.content} " id = "content1" name ="content1"/>
<div class="form-group">
         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" 
         	src="${social1.img}" width="700px" height="300px" />
         	
	<input type = "file" id = "infoImg1" name="infoImg1" value = "${social1.img}"/>
</div>

<br>
<input type ="text" value ="${social2.title}" id = "title2" name ="title2"/>
<input type ="text" value ="${social2.content}" id = "content2" name ="content2"/>
<div class="form-group">
         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" 
         	src="${social2.img}" width="700px" height="300px" />
         	
	<input type = "file" id = "infoImg2" name = "infoImg2" value = "${social2.img}">
</div>
<button type = "submit">수정하기</button>

</form>
</body>
</html> 