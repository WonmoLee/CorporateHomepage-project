<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script>
		function selectBx() {
			document.getElementById("selectHold").value="default";
		}
	</script>
    
    <footer style="padding-top: 20px; padding-bottom:40px;border-top:1px solid; color:#c0c0c0;">
	<div class="top">
		<ul>
		<li><a href="">이용약관</a></li>
		<li><a href="">위치기반서비스이용약관</a></li>
		<li><a href="">개인정보처리방침</a></li>
		<li><a href="">운영정책</a></li>
		<li><a href="">청소년보호정책</a></li>
		<li><a href="">권리침해신고안내</a></li>
		<li><a href="">공지사항</a></li>
		<li><a href="">사이버윤리실</a></li>
		</ul>
		<div>
			<select id="selectHold" class="selectBx" onchange="window.open(value, '_blank');selectBx();">
			<option value="default" selected hidden="">관련사이트</option>
			<option value="https://kakao.ai/">카카오 AI</option>
			<option value="https://privacy.kakao.com/main?lang=ko">카카오 프라이버시</option>
			<option value="https://developers.kakao.com/">카카오 디벨로퍼스</option>
			<option value="https://www.daum.net/">다음 포털 사이트</option>
			<option value="https://winwin.kakao.com/index">동반성장 사이트</option>
			<option value="https://jeju.kakao.com/">제주 with kakao</option>
			</select>
		</div>
	</div>
	<div class="btm">
		<p>Copyright © Kakao Corp. All rights reserved.</p>
	</div>
	</footer>