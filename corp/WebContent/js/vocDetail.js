function deleteById(boardId){
	$.ajax({
		type: "POST",
		url: "/corp/menu?cmd=vocDeleteProc&id="+boardId,
		dataType: "text"
	}).done(function(result){
		console.log(result);
		if(result == 1){
			alert("삭제 성공");
			location.href="/corp/menu?cmd=voiceOfCust";
		}else{
			alert("삭제 실패");
		}
	}).fail(function(error){
		console.log(error);
		console.log(error.responseText);
		console.log(error.status);
		alert("서버 오류");
	});
}

function back() {
	location.href = "/corp/menu?cmd=voiceOfCust";
}