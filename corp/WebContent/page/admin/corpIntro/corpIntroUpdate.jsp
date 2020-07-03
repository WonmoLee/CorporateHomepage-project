
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
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<section>
	<form action ="/corp/admin?cmd=introUpdateProc" method="post" enctype="multipart/form-data">
		  <div class="introUpdate_title">
		  	 <label>제목
		  	 	<input type = "text" value = "${corpintro.title}" id = "title" name = "title">
		  	 </label>
		  </div>
		  <label class="gg1">이미지</label>
		  <div class="form-group">
		         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" src="${corpintro.img}" width="700px" height="300px" />
	      </div>
		  <div class="gg2">
			  <input type="file" id="infoImg" name="infoImg" id="img__preview" style="width: 93px;border: 0px;" />
		  </div>
		  <div class="gg3">
		  	 <label>부제목
		  	 	<input type="text" value="${corpintro.contentTitle}" id="contentTitle" name="contentTitle">
		  	 </label>
		  </div>
		  <div class="gg4">
		  	 <label>부제목에 관한 설명
		  	 	<input type = "text" value = "${corpintro.content}" id = "content" name = "content">
		  	 </label>
		  </div>
		  <button class="gg5" type = "submit">수정하기</button>
	</form>
	<script src="/corp/js/imgPreview.js"></script>
	</section>
	<%@ include file="/include/footer.jsp" %>
</body>
</html> 