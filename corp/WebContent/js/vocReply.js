function vocReplyDelete (replyId){
	console.log(replyId);
	$.ajax({
		type: "post",
		url: "/corp/reply?cmd=vocReplyDeleteProc",
		data: "replyId="+replyId,
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		dataType: "text"
	}).done(function(result){
		if(result == 1){
			alert("댓글 삭제 성공");
			var vocReplyItem = $("#reply-"+replyId);
			vocReplyItem.remove();
		}else{
			alert("댓글 삭제 실패")
		}
		
	}).fail(function(error){
		alert("댓글 삭제 실패");
	});
}

function vocReplyWrite(boardId, userId){
	if(userId === undefined) {
		alert("로그인이 필요합니다.");
		return;
	}
	
	var data = {
		boardId: boardId,
		userId: userId,
		content: $("#reply__write__form").val()
	};
	
	$.ajax({
		type: "post",
		url: "/corp/reply?cmd=vocReplyWriteProc",
		data: JSON.stringify(data),
		contentType: "application/json; charset=utf-8",
		dataType: "json"
	}).done(function(result){
		if(result == -1 || result == 0){
			alert("댓글 작성 실패");
		}else{
			alert("댓글 작성 성공");
			// 1. reply__list를 찾아서 내부를 비우기
			$("#reply__list").empty();
			console.log(result);
			// 2. ajax 재호출 findAll()
			vocRenderReplyList(result, userId);
			// 3.reply__list를 찾아서 내부에 채워주기
			$("#reply__write__form").val("");
		}
	}).fail(function(error){
		alert("댓글 작성 실패");
	});
}

function vocRenderReplyList(vocReplyDtos, userId){
	for(var vocReplyDto of vocReplyDtos){
		$("#reply__list").append(vocMakeReplyItem(vocReplyDto, userId));
	}
}

function vocMakeReplyItem(vocReplyDto, userId){
	var vocReplyItem = `<li id="reply-${vocReplyDto.vocReply.id}" class="media">`;
	if(vocReplyDto.userProfile == null){
		vocReplyItem += `<img src="/corp/static/img/userProfile.png" class="img-circle">`;	
	}else{
		vocReplyItem += `<img src="${vocReplyDto.userProfile}" class="img-circle">`;
	}
	
	vocReplyItem += `<div class="media-body">`;
	vocReplyItem += `<strong class="text-primary">${vocReplyDto.username}</strong>`;
	vocReplyItem += `<p>${vocReplyDto.vocReply.content}</p>`;
	vocReplyItem += `</div>`;
	//휴지통 추가 시작
	vocReplyItem += `<div class="m-2">`;
	if(vocReplyDto.vocReply.userId == userId){
		vocReplyItem += `<i onclick="vocReplyDelete(${vocReplyDto.vocReply.id})" class="material-icons i__btn">delete</i>`;
	}
	vocReplyItem += `</div>`;
	//휴지통 추가 끝
	vocReplyItem += `</li>`;
	return vocReplyItem;
}