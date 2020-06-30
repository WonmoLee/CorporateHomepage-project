<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/corp/js/imgPreview.js"></script>
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<section>
	<form action ="/corp/admin?cmd=introUpdateProc" method = "post" enctype="multipart/form-data">
		  <div>
		  	 <input type = "text" value = "${corpintro.title}" id = "title" name = "title">
		  </div>
		  <div class="form-group">
	         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" 
	         	src="${corpintro.img}" width="700px" height="300px" />
	      </div>
		  <div>
		  	 <input type="file" id="infoImg" name="infoImg" id="img__preview"/>
		  </div>
		  <div>
		  	 <input type = "text" value = "${corpintro.content}" id = "content" name = "content">
		  </div>
		  <button type = "submit">수정하기</button>
	</form>
	</section>
	<%@ include file="/include/footer.jsp" %>
</body>
</html> 