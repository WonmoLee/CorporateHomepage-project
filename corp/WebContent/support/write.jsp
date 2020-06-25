<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<form action="menu?cmd=voiceOfCustWriteProc" method="post">

		title<br/>
		<input type="text" value="" id = "title" name = "title"/><br>
		
		content<br/> 
		<input type="text" value="" id = "content" name = "content" /><br>
		
		<button type="submit">글쓰기</button>

	</form>
	<%@include file="../include/footer.jsp"%>
</body>
</html>