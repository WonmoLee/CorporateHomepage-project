<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Kakao</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<section>
		<div class="adminPage">
			<h1>관리자 페이지</h1>
			<div class="introUpdate">
			<a href="/corp/admin?cmd=introUpdate">nav : 카카오 수정</a><br/>
			<a href="/corp/admin?cmd=serviceUpdate">nav : 서비스 수정</a><br/>
			<a href="/corp/admin?cmd=socialImpactUpdate">nav : 소셜임팩트 수정</a><br/>
			<a href="/corp/admin?cmd=supportUpdate">nav : 고객지원 수정</a><br/>
			<a href="/corp/admin?cmd=homeUpdate">nav : 메인홈 수정</a><br/>
			</div>
		</div>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>