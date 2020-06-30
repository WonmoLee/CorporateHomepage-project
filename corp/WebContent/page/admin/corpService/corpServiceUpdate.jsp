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
		  <div class="form-group">
	         <img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" src="${corpServiceTitles.img}" width="700px" height="300px"/>
	      </div>
		  <div>
		  	 <input type="file" id="titleImg" name="titleImg" id="img__preview"/>
		  </div>
		  <div>
		  	 <input type="text" value="${corpServiceTitles.title}" id="mainTitle" name="mainTitle">
		  </div>
		  <div>
		  	 <input type="text" value="${corpServiceTitles.content}" id="mainContent" name="mainContent">
		  </div>
		  <br><br><br><br>
		  <c:forEach var = "corpService" items="${corpServices}" varStatus="status">
		  <div>
		  	 <input class="hide" type="text" value="${corpService.id}" id="id" name="id${status.count}">
		  	 <input type = "text" value = "${corpService.category}" id = "category" name = "category${status.count}">
		  	 	<img id = "img__wrap" onerror="this.src='/corp/static/img/emptyImg.png'" src="${corpService.img}" width="100px" height="100px"/>
	         <input type="file" id="contentImg" name="contentImg${status.count}" id="img__preview" value="${corpService.img}" />
	         <input type = "text" value = "${corpService.name}" id = "name" name = "name${status.count}">
	         <input type = "text" value = "${corpService.text}" id = "text" name = "text${status.count}">
		  </div>
		  <br><br><br><br><br><br>
		  </c:forEach>
		  <button type = "submit">수정하기</button>
		  </form>
	</section>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>