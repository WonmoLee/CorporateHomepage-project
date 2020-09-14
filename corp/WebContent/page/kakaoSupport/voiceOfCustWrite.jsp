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
	<form action="/corp/support?cmd=voiceOfCustWriteProc" method="post" style="margin: 100px 500px 200px 500px; font-size: 25px;">

		title<br/>
		<input type="text" value="" id = "title" name = "title" style="padding: 10px 0 10px 0; margin-bottom: 100px;"/><br>

		content<br/> 
		<input type="text" value="" id = "content" name = "content" style="font-size: 18px; padding: 20px 0 100px 0;"/><br>

		<button type="submit" style="padding: 10px 30px 10px 30px; margin-top: 30px;">글쓰기</button>

	</form>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html> 