<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KAKAO</title>
<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">

<script src="/corp/js/vocDetail.js"></script>
<script src="/corp/js/vocReply.js"></script>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<section>
	<div class="container">
 	<button class="btn btn-secondary" onclick="back()">글목록</button>
 	
 	<c:if test="${sessionScope.principal.id == vocDetailDto.vocBoardDto.vocBoard.userId}">
 		<a href="/corp/support?cmd=vocPostUpdate&id=${vocDetailDto.vocBoardDto.vocBoard.id}" class="btn btn-warning">수정</a>
 		<button class="btn btn-danger" onclick="vocDeleteById(${vocDetailDto.vocBoardDto.vocBoard.id})">삭제</button>
 	</c:if>
 	
 	<br/>
 	<br/>
 	<h6 class="m-2">
 		작성자 : <i>${vocDetailDto.vocBoardDto.username}</i>
 		조회수 : <i>${vocDetailDto.vocBoardDto.vocBoard.readCount}</i>
 	</h6>
 	<br/>
 	<h3 class="m-2">
 		<b>${vocDetailDto.vocBoardDto.vocBoard.title}</b>
 	</h3>
   	<hr/>
  		
  	<div class="form-group">
  		<div class="m-2">${vocDetailDto.vocBoardDto.vocBoard.content}</div>
  	</div>
  	
  	<hr />
	
	<!-- 댓글 박스 -->
	<div class="row bootstrap snippets">
		<div class="col-md-12">
			<div class="comment-wrapper">
				<div class="panel panel-info">
					<div class="panel-heading m-2"><b>Comment</b></div>
					<div class="panel-body">
						<textarea id="reply__write__form" class="form-control" placeholder="write a comment..." rows="3"></textarea>
						<br>
						<button onclick="vocReplyWrite(${vocDetailDto.vocBoardDto.vocBoard.id}, ${sessionScope.principal.id})" class="btn btn-primary pull-right">댓글쓰기</button>
						<div class="clearfix"></div>
						<hr />
						<!-- 댓글 리스트 시작 -->	
						<ul id="reply__list" class="media-list">
						
							<c:forEach var="vocReplyDto" items="${vocDetailDto.vocReplyDtos}">
								<!-- 댓글 아이템 -->
								<li id="reply-${vocReplyDto.vocReply.id}" class="media">	
									<img onerror="this.src='/corp/static/img/userProfile.png'" src="${vocReplyDto.userProfile}" alt="" class="img-circle">		
									<div class="media-body">
										<strong class="text-primary">${vocReplyDto.username}</strong>
										<p>
											${vocReplyDto.vocReply.content}
										</p>
									</div>
									<div class="m-2">
										<c:if test="${vocReplyDto.vocReply.userId eq sessionScope.principal.id}">
										<i onclick="replyUpdate(${vocReplyDto.vocReply.id})" class="material-icons i__btn">edit</i>&nbsp;&nbsp;&nbsp;
										<i onclick="vocReplyDelete(${vocReplyDto.vocReply.id})" class="material-icons i__btn">delete</i>
										</c:if>
									</div> 
								</li> 
							</c:forEach>
						</ul> 
 					<!-- 댓글 리스트 끝  -->	 
 					</div> 
				</div> 
			</div>
		</div>
	</div>
	<!-- 댓글 박스 끝 -->
  	
	</div>
	</section>
	
	<%@ include file="/include/footer.jsp"%>
</body>
</html>