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
<script src = "/corp/js/kakaoService.js"></script>
</head>
<body>
<%@ include file="/include/header.jsp" %>
<section>
<div>이미지 들어갈 공간</div>
<div>
<h4>사람과 세상을 향한 모든 연결의 시작, 카카오톡</h4><br>
<p>가족과 친구들에게 안부를 묻고 이야기를 나눠 보세요. 
생활의 편리를 돕는 다양한 기능도 준비되어 있습니다.<br/>
 세상을 향해 열린 문을 ‘톡’하고 두드려 보세요</p>
 <hr>
</div>
<div class = "category__select">
<select name="category" onchange= "category(this.value)" >
    <option value="전체">전체</option>
    <option value="포털">포털</option>
    <option value="커뮤니케이션">커뮤니케이션</option>
    <option value="콘텐츠">콘텐츠</option>
    <option value="커머스">커머스</option>
    <option value="게임">게임</option>
    <option value="핀테크">핀테크</option>
    <option value="모빌리티_라이프">모빌리티&라이프</option>
    <option value="소셜임팩트">소셜임팩트</option>
</select>
</div>
<div>
<ul class = "category__list">
<c:forEach var = "corpService" items="${corpServices}">
	<br/>
	<li><img src="${corpService.img}" width="30px" height="30px">
	<h4>${corpService.name}</h4>
	<p>${corpService.text}</p>
	<br/>
	</li>
</c:forEach>
</ul>
</div>
</section>
<%@ include file="/include/footer.jsp" %>
</body>
</html> 