<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<section>
		<h2 class="supportTitle">Kakao Support</h2>
		<div class="kakaoSupport">
			<ul>
			<li><a href="/corp/home?cmd=main">홈</a></li>
			<li>&nbsp;>&nbsp;</li>
			<li><a href="/corp/support?cmd=voiceOfCust">고객지원</a></li>
			</ul>
		</div>
		<div class="supportMainAjax">
			<div class="ks_list">
				<h2>고객지원</h2>
<!-- 				<ul onclick="support_list(this.value)"> -->
<!-- 				<li value="voiceOfCust"><a href="">고객의 소리</a></li> -->
<!-- 				<li value="FAQ"><a href="">FAQ</a></li> -->
<!-- 				<li value="consulting"><a href="">1:1 상담</a></li> -->
<!-- 				</ul> -->

				<ul >
				<li><a href="javascript:void(0);" onclick="support_list('voc', ${vocLastPage})">고객의 소리</a></li>
				<li><a href="javascript:void(0);" onclick="support_list('faq', ${vocLastPage})">FAQ</a></li>
				<li><a href="javascript:void(0);" onclick="support_list('one', ${vocLastPage})">1:1 상담</a></li>
				</ul>
			</div>
			<div class="vocBoard_list">
				<div>
				<h2 id="supportTitle">고객의 소리</h2>
				<button class="vocWritebtn" type="button" value="글쓰기" onclick="location.href='page/kakaoSupport/voiceOfCustWrite.jsp'">글쓰기</button>
				</div>
				<div>
				<ul class="board_list">
				<c:forEach var="vocBoard" items="${vocBoards}" varStatus="num">
		   		<li><a href="/corp/support?cmd=vocDetail&id=${vocBoard.id}">${vocBoard.title}</a></li>
		   		</c:forEach>
		   		</ul>
		   		<br>
		   		<div id="paging">
			   		<%@ include file="/include/paging.jsp" %>
		   		</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
	
// 	console.log("테스트 : "+ $("#li1").val());
// 	console.log("테스트1 : "+ $("#input1").val());

	function support_list(value, lastPage) {
		
		$.ajax({
			
			type : "get",
			url : "/corp/support?cmd=supportMainBoardList&value="+value,
			dataType : "json"
				
		}).done(function (result) {
			var page = 0;
			console.log(result);
			$(".board_list").empty();
			
			if(value == "voc"){
				
				$("#supportTitle").text("고객의 소리");
				
				for(var support of result){
					
					var id = support.id;
					var title = support.title;
					
					var String =
						"<li><a href=\"/corp/support?cmd=vocDetail&id="+id+"\">"+title+"</a></li>";
		
					$(".board_list").append(String);
				}
				
				$("#paging").empty();
				
				var prev = "";
				var next = "";
				
				if(page == 0){
					prev = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page+1)+")\">Next</a></li>\r\n";
				} else if (page == lastPage) {
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page+1)+")\">Next</a></li>\r\n";
				} else{
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page+1)+")\">Next</a></li>\r\n";
				}
				
				var pageString =
				"<ul class=\"pagination justify-content-center\">\r\n" + 
				prev+
				next+
				"</ul>";
				
				$("#paging").append(pageString);
				
			} else if(value == "faq"){
				
				$("#supportTitle").text("FAQ");
				
				for(var support of result){
					
					var String =
						"li 만들기";
					
					$(".board_list").append(String);
				}
				
				
				$("#paging").empty();
				
				var prev = "";
				var next = "";
				
				if(page == 0){
					prev = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page+1)+")\">Next</a></li>\r\n";
				} else if (page == lastPage) {
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page+1)+")\">Next</a></li>\r\n";
				} else{
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page+1)+")\">Next</a></li>\r\n";
				}
				
				var pageString =
				"<ul class=\"pagination justify-content-center\">\r\n" + 
				prev+
				next+
				"</ul>";
				
				$("#paging").append(pageString);
				
				
			}
			
		}).fail(function(result) {
			
			alert(result);
			
		});
	}
	
	function pageMove(part, page) {
		
		var url = "";
		
		if(part == "voc"){
			url = "/corp/support?cmd=voiceOfCustPagingProc&page=";
		} else if (part == "faq"){
			url = "/corp/support?cmd=faqPagingProc&page=";
		}
		
		$.ajax({
			
			type: "get",
			url: url+page,
			dataType: "json"
			
		}).done(function(result) {
			
			if(part == "voc"){
				
				$("#supportTitle").text("고객의 소리");
				
				$(".board_list").empty();
				
				for(var support of result.vocBoards){
					
					var id = support.id;
					var title = support.title;
					
					var String =
						"<li><a href=\"/corp/support?cmd=vocDetail&id="+id+"\">"+title+"</a></li>";
		
					$(".board_list").append(String);
				}
				
				$("#paging").empty();
				
				var prev = "";
				var next = "";
				
				if(result.page == 0){
					prev = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page+1)+")\">Next</a></li>\r\n";
				} else if (result.page == result.vocLastPage) {
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page+1)+")\">Next</a></li>\r\n";
				} else{
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('voc', "+(page+1)+")\">Next</a></li>\r\n";
				}
				
				var pageString =
				"<ul class=\"pagination justify-content-center\">\r\n" + 
				prev+
				next+
				"</ul>";
				
				$("#paging").append(pageString);
				
			} else if(part == "faq"){
				
				$("#supportTitle").text("FAQ");
				
				$(".board_list").empty();
				
				for(var support of result.faqBoards){
					
					var String =
						"li 만들기";
					
					$(".board_list").append(String);
				}
				
				
				$("#paging").empty();
				
				var prev = "";
				var next = "";
				
				if(result.page == 0){
					prev = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page+1)+")\">Next</a></li>\r\n";
				} else if (result.page == result.vocLastPage) {
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item disabled\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page+1)+")\">Next</a></li>\r\n";
				} else{
					prev = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page-1)+")\">Previous</a></li>\r\n";
					next = "<li class=\"page-item\" style=\"border-bottom:0px;\"><a class=\"page-link\" href=\"javascript:void(0);\" onclick=\"pageMove('faq', "+(page+1)+")\">Next</a></li>\r\n";
				}
				
				var pageString =
				"<ul class=\"pagination justify-content-center\">\r\n" + 
					prev+
					next+
				"</ul>";
				
				$("#paging").append(pageString);
			}
			
		}).fail(function(error) {
			
			alert("페이지를 불러오지 못하였습니다.");
			
		});
		
		
	}
	
	
	</script>
	<%@ include file="/include/footer.jsp" %>
</body>
</html>