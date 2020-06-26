<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="/corp/menu?cmd=introUpdateProc" method = "post">

<input type = "text" value = "${corpintro.title}" id = "title" name = "title">
<input type = "text" value = "${corpintro.content}" id = "content" name = "content">

<button type = "submit">수정하기</button>
</form>
</body>
</html> 