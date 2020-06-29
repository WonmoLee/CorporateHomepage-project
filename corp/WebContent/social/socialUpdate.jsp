<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소셜임팩트 수정하기</title>
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