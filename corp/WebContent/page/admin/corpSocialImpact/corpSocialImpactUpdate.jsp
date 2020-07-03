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
<section>
<form action = "/corp/admin?cmd=socialImpactUpdateProc" method = "post" enctype = "multipart/form-data">
<div class="aa2">
<label class="aa2" style="margin-left: -30px;">서브 이미지1의 제목
	<input type ="text" value ="${social1.title}" id = "title1" name ="title1"/>
</label>
<label class="aa2" style="margin-left: -30px;">서브 이미지1의 내용
	<input type ="text" value ="${social1.content} " id = "content1" name ="content1"/>
</label>
</div>
<label class="aa2" style="margin:30%">서브 이미지1</label>
<div class="form-group">
         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" 
         	src="${social1.img}" width="700px" height="300px" />
</div>
<input type = "file" id = "infoImg1" name="infoImg1" value = "${social1.img}" style="width:93px;border:0px;margin-left:30.6%;"/>

<br>

<div class="aa2">
<label class="aa2" style="margin-left: -30px;">서브 이미지2의 제목
	<input type ="text" value ="${social2.title}" id = "title2" name ="title2"/>
</label>
<label class="aa2" style="margin-left: -30px;">서브 이미지2의 내용
	<input type ="text" value ="${social2.content}" id = "content2" name ="content2"/>
</label>
<label class="aa2" style="margin:-20%;">서브 이미지1</label>
<div class="form-group" style="margin-left:-3%;">
         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" 
         	src="${social2.img}" width="700px" height="300px" />
</div>
<input type = "file" id = "infoImg2" name = "infoImg2" value = "${social2.img}" style="width:93px;border:0px;margin-left:-3%;">
</div>
<button class="gg5" type = "submit">수정하기</button>

</form>
</section>
<%@ include file="/include/footer.jsp" %>
</body>
</html> 