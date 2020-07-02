function support_list(value) {
	$.ajax({
		
		type : "get",
		url : "/corp/support?cmd=supportMainBoardList&value="+value,
		dataType : "JSON"
			
	}).done(function (result) {
		console.log(result);
		$(".board_list").empty();
		
		for(var support of result){

			var String =
			"	<li><a href =\""+support.title+"\" width=\"80px\" height=\"80px\">\r\n" + 
			"	</li>";

			$(".board_list").append(String);
		}

		
	}).fail(function(result) {
		
		alert(result);
		
	})
}