<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
		<form action ="/corp/admin?cmd=serviceUpdateProc" method = "post" enctype="multipart/form-data">
		  <label class="aa1">메인 이미지</label>
		  <div class="form-group">
	         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" src="${corpServiceTitles.img}" width="700px" height="300px"/>
	      </div>
		  <div class="gg2">
		  	 <input type="file" id="titleImg" name="titleImg" id="img__preview" style="width: 93px;border: 0px;"/>
		  </div>
		  <div class="aa2">
		   	 <label>메인 이미지 제목
		  	 	<input type="text" value="${corpServiceTitles.title}" id="mainTitle" name="mainTitle">
		  	 </label>
		  </div>
		  <div class="aa2">
		  	 <label>메인 이미지 내용
		  	 	<input type="text" value="${corpServiceTitles.content}" id="mainContent" name="mainContent">
		  	 </label>
		  </div>
		  <br><br><br><br>
		  <div class="adminSv_list">
		  <c:forEach var = "corpService" items="${corpServices}" varStatus="status">
		  <div class="aa3">
		  	 <input class="hide" type="text" value="${corpService.id}" id="id" name="id${status.count}" >
		  	 <input type = "text" value = "${corpService.category}" id = "category" name = "category${status.count}" placeholder="카테고리를 입력해주세요.">
		  	 	<img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" src="${corpService.img}" width="100px" height="100px"/>
	         <input type="file" id="contentImg" name="contentImg${status.count}" id="img__preview" value="${corpService.img}" style="width: 93px;border: 0px;" />
	         <input type = "text" value = "${corpService.name}" id = "name" name = "name${status.count}" placeholder="아이콘 제목을 입력해주세요.">
	         <input type = "text" value = "${corpService.text}" id = "text" name = "text${status.count}" placeholder="아이콘 내용을 입력해주세요.">
		  </div>
		  <br><br><br><br><br><br>
		  </c:forEach>
		  </div>
		  <button class="gg5" type = "submit">수정하기</button>
		  </form>
	</section>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>