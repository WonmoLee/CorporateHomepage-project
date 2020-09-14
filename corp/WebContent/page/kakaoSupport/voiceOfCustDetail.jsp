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
	<div class="board__detail" style="margin: 50px 200px 50px 200px;">
 	<button class="btn btn-secondary" onclick="back()" style="margin: 10px;">글목록</button>
 	
 	<c:if test="${sessionScope.principal.id == vocDetailDto.vocBoardDto.vocBoard.userId || sessionScope.principal.userRole eq 'ADMIN'}">
 		<a href="/corp/support?cmd=vocPostUpdate&id=${vocDetailDto.vocBoardDto.vocBoard.id}" class="btn btn-warning" style="margin: 10px; border: 1px solid; padding: 3px;">수정</a>
 		<button class="btn btn-danger" onclick="vocDeleteById(${vocDetailDto.vocBoardDto.vocBoard.id})" style="margin: 10px;">삭제</button>
 	</c:if>
 	
 	<br/>
 	<br/>
 	<h6 class="m-2" style="font-size: 25px; margin-bottom: 50px;">
 		작성자 : <i>${vocDetailDto.vocBoardDto.username}</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 		조회수 : <i>${vocDetailDto.vocBoardDto.vocBoard.readCount}</i>
 	</h6>
 	<br/>
 	<h3 class="m-2" style="font-size: 20px; border-bottom: 1px solid; padding-bottom: 10px; margin-bottom: 40px;">제목 : 
 		<b>${vocDetailDto.vocBoardDto.vocBoard.title}</b>
 	</h3>
   	<hr/>
  		
  	<i class="form-group" style="font-size: 20px; text-align: left; padding-left: 0;">내용 : 
  		<i>${vocDetailDto.vocBoardDto.vocBoard.content}</i>
  	</i>
  	
  	<hr />
	
	<!-- 댓글 박스 -->
	<div class="row bootstrap snippets">
		<div class="col-md-12">
			<div class="comment-wrapper">
				<div class="panel panel-info">
					<div class="panel-heading m-2" style="margin: 70px 0 20px 0; font-size: 20px;"><b>댓글</b></div>
					<div class="panel-body">
						<textarea id="reply__write__form" class="form-control" placeholder="댓글을 작성해주세요" rows="3" style="height: 20px;"></textarea>
						<br>
						<button onclick="vocReplyWrite(${vocDetailDto.vocBoardDto.vocBoard.id}, ${sessionScope.principal.id})" class="btn btn-primary pull-right" style="margin: 20px 0 20px 0;">댓글쓰기</button>
						<div class="clearfix"></div>
						<hr />
						<!-- 댓글 리스트 시작 -->	
						<ul id="reply__list" class="media-list">
						
							<c:forEach var="vocReplyDto" items="${vocDetailDto.vocReplyDtos}">
								<!-- 댓글 아이템 -->
								<li id="reply-${vocReplyDto.vocReply.id}" class="media">	
									<div class="media-body" style="margin: 20px 0 30px 0; font-size: 20px;">
										<img onerror="this.src='/corp/static/img/userProfile.png'" src="${vocReplyDto.userProfile}" alt="" class="img-circle" style="width: 50px; height: 50px;">
										<strong class="text-primary">${vocReplyDto.username}</strong>
										<p style="margin-top: 10px;">
											${vocReplyDto.vocReply.content}
										</p>
									</div>
									<div class="m-2">
										<c:if test="${vocReplyDto.vocReply.userId eq sessionScope.principal.id}">
										<i onclick="replyUpdate(${vocReplyDto.vocReply.id})" class="material-icons i__btn">댓글수정</i>&nbsp;&nbsp;&nbsp;
										<i onclick="vocReplyDelete(${vocReplyDto.vocReply.id})" class="material-icons i__btn">댓글삭제</i>
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