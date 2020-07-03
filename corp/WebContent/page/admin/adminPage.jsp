<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Kakao</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<section>
		<div class="adminPage">
			<h1>관리자 페이지</h1>
			<div class="adminMain">
			<a class="page-link" style="margin:10px 70px 10px 70px;width:350px;border: 4px solid;border-color: #808080;color:#000000;" href="/corp/admin?cmd=homeUpdate">홈메인 수정</a><br/>
			<a class="page-link" style="margin:10px 70px 10px 70px;width:350px;border: 4px solid;border-color: #808080;color:#000000;" href="/corp/admin?cmd=introUpdate">카카오 수정</a><br/>
			<a class="page-link" style="margin:10px 70px 10px 70px;width:350px;border: 4px solid;border-color: #808080;color:#000000;" href="/corp/admin?cmd=serviceUpdate">서비스 수정</a><br/>
			<a class="page-link" style="margin:10px 70px 10px 70px;width:350px;border: 4px solid;border-color: #808080;color:#000000;" href="/corp/admin?cmd=socialImpactUpdate">소셜임팩트 수정</a><br/>
			</div>
		</div>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>