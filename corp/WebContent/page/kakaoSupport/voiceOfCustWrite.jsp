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
	<%@ include file="/include/header.jsp"%>
	<section>
	<form action="/corp/support?cmd=voiceOfCustWriteProc" method="post">

		title<br/>
		<input type="text" value="" id = "title" name = "title"/><br>

		content<br/> 
		<input type="text" value="" id = "content" name = "content" /><br>

		<button type="submit">글쓰기</button>

	</form>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html> 