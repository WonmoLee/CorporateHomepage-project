function category(value){
		$.ajax({

			type : "get",
			url : "/corp/service?cmd=serviceMainCategory&value="+value,
			dataType : "JSON"

		}).done(function(result){
			console.log(result);
			$(".category__list").empty();


			for(var service of result){

				var String =
				"	<br/>\r\n" + 
				"	<li><img src =\""+service.img+"\" width=\"80px\" height=\"80px\">\r\n" + 
				"	<h4>"+service.name+"</h4> \r\n" + 
				"	<p>"+service.text+"</p>\r\n" + 
				"	<br/>\r\n" + 
				"	</li>";

				$(".category__list").append(String);
			}

		}).fail(function(result){
			alert(result);

		});	
	}