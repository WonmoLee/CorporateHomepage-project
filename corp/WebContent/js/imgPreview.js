
$("#img__preview").on("change",function(e){ //change : 변화 감지
	
		var f = e.target.files[0];
		if(!f.type.match("image*")){
			$("#img__preview").val("");
			alert("사진이 아닙니다.");
		}
		
		var reader = new FileReader();

		reader.onload = function(e){
			$("#img__wrap").attr("src", e.target.result);// 이미지가 담긴다.			
		
		}
		reader.readAsDataURL(f); // 비동기 실행


	});
