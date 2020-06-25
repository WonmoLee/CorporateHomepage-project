<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>

<meta charset="UTF-8">

<link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/kakao.css">

</head>
<body>
<%@ include file="../include/header.jsp" %>
<a href="/corp/intro?cmd=introUpdate">수정</a><br/>
<i>${corpintro.title}</i><br/>
<b>${corpintro.content}</b>
<%@ include file="../include/footer.jsp" %>
</body>
</html> 