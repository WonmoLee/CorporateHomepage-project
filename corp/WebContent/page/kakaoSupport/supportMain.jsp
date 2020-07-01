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
	<%@ include file="/include/header.jsp" %>
	<section>
		<h2 class="supportTitle">Kakao Support</h2>
		<div class="kakaoSupport">
			<ul>
			<li><a href="/corp/home?cmd=main">홈</a></li>
			<li>&nbsp>&nbsp</li>
			<li><a href="/corp/support?cmd=voiceOfCust">고객지원</a></li>
			</ul>
		</div>
		<div class="supportMainAjax">
			<div class="ks_list">
				<h2>고객지원</h2>
				<ul>
				<li><a href="">FAQ</a></li>
				<li><a href="">고객의 소리</a></li>
				<li><a href="">1:1 상담</a></li>
				<li><a href="">Null</a></li>
				<li><a href="">Null</a></li>
				<li><a href="">Null</a></li>
				<li><a href="">Null</a></li>
				<li><a href="">Null</a></li>
				<li><a href="">Null</a></li>
				</ul>
			</div>
			<div class="vocBoard_list">
				<div>
				<h2>고객의 소리<button class="vocWritebtn" type="button" value="글쓰기" onclick="location.href='page/kakaoSupport/voiceOfCustWrite.jsp'">글쓰기</button></h2>
				</div>
				<div>
				<ul>
				<c:forEach var="vocBoard" items="${vocBoards}" varStatus="num">
		   		<li><a href="/corp/support?cmd=vocDetail&id=${vocBoard.id}">${num.count}&nbsp;.&nbsp;${vocBoard.title}</a></li>
		   		</c:forEach>
		   		</ul>
		   		<br>
		   		<%@ include file="/include/paging.jsp" %>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>