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
<form action = "/corp/menu?cmd=socialUpdateProc">
<input type ="text" value ="${social1.title}" id = "title1" name ="title1"/>
<input type ="text" value ="${social1.content} " id = "content1" name ="content1"/>
<br>
<input type ="text" value ="${social2.title}" id = "title" name ="title"/>
<input type ="text" value ="${social2.content}" id = "content" name ="content"/>

<button type = "submit">수정하기</button>
</form>
</body>
</html> 