<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지 수정</title>
</head>
<body>
<form action = "/corp/admin?cmd=homeUpdateProc" method = "post" enctype="multipart/form-data">
	<!-- 슬라이드 이미지 수정 -->
	<div style = "display : flex; max-width : 1080px;
					  margin : 0 auto; justify-content : center;
					  margin-bottom : 50px;  margin-top : 20px">

		<div style = "margin-right: 30px">
		<h6>첫번째 슬라이드</h6><br/>
		<img src = "${ChomeText1.img }" width = "300px" height = "170px"/><br/>
		<input type = "file" id = "CinfoImg1" name = "CinfoImg1" ><br/>
		<input type = "text" id = "Ctitle1" name = "Ctitle1" value = "${ChomeText1.title }"/>
		</div>

		<div style = "margin-right: 30px">
		<h6>두번째 슬라이드</h6><br/>
		<img src = "${ChomeText2.img }" width = "300px" height = "170px"/><br/>
		<input type = "file" id = "CinfoImg2" name = "CinfoImg2" ><br/>
		<input type = "text" id = "Ctitle2" name = "Ctitle2" value = "${ChomeText2.title }"/>
		</div>

		<div style = "margin-right: 30px">
		<h6>세번째 슬라이드</h6><br/>
		<img src = "${ChomeText3.img }" width = "300px" height = "170px"/><br/>
		<input type = "file" id = "CinfoImg3" name = "CinfoImg3" ><br/>
		<input type = "text" id = "Ctitle3" name = "Ctitle3" value = "${ChomeText3.title }"/>
		</div>

		<div>
		<h6>네번째 슬라이드</h6><br/>
		<img src = "${ChomeText4.img }" width = "300px" height = "170px"/><br/>
		<input type = "file" id = "CinfoImg4" name = "CinfoImg4" ><br/>
		<input type = "text" id = "Ctitle4" name = "Ctitle4" value = "${ChomeText4.title }"/>
		</div>
	</div>
	<hr>
	<!-- 글수정  -->
		<div style = "display : flex; max-width : 1080px;
					  margin : 0 auto; justify-content : center;
					  margin-bottom : 50px;  margin-top : 20px">

			<div style = "margin-right: 50px">
				<input type = "text" id = "title4" name ="title4" value ="${homeText4.title }"/><br>
				<input type = "text" id = "content4" name ="content4" value ="${homeText4.content }"/>
			</div>

			<div style = "margin-right: 50px">
				<input type = "text" id = "title5" name ="title5" value ="${homeText5.title }"/><br>
				<input type = "text" id = "content5" name ="content5" value ="${homeText5.content }"/>
			</div>

			<div>
				<input type = "text" id = "title6" name ="title6" value ="${homeText6.title }"/><br>
			</div>

		</div>
	<hr>
	<!-- 사진수정  -->
	<div style = "display : flex; max-width : 1080px;
					  margin : 0 auto; justify-content : center;
					  margin-bottom : 50px;  margin-top : 20px">

		<div style = "margin-right: 50px">
		<img src = "${homeText1.img}" width = "360px" height="200"/>
		<input type = "file" id = "infoImg1" name = "infoImg1" value = "${homeText1.img }"/><br/>
		title : <input type = "text" value = "${homeText1.title}" id= "title1" name = "title1" /><br/>
		content : <input type = "text" value = "${homeText1.content}" id= "content1" name = "content1" />		
		</div>

		<div style = "margin-right: 50px">
		<img src = "${homeText2.img}" width = "360px" height="200"/>
		<input type = "file" id = "infoImg2" name = "infoImg2" value = "${homeText2.img }"/><br/>
		title : <input type = "text" value = "${homeText2.title}" id= "title2" name = "title2" /><br/>
		content : <input type = "text" value = "${homeText2.content}" id= "content2" name = "content2" />		

		</div>

		<div>
		<img src = "${homeText3.img}" width = "360px" height="200"/>
		<input type = "file" id = "infoImg3" name = "infoImg3" value = "${homeText3.img }"/><br/>
		title : <input type = "text" value = "${homeText3.title}" id= "title3" name = "title3" /><br/>
		content : <input type = "text" value = "${homeText3.content}" id= "content3" name = "content3" />		
		</div>

		</div>
		<button type = "submit"> 수정하기 </button>
</form>		
</body>
</html> 