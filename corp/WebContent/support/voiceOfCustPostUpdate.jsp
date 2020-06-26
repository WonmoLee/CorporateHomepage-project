<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KAKAO</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/corp/static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<section>
	<div class="container">
   	
		<form action="/corp/menu?cmd=vocPostUpdateProc" method="POST">

		<input type="hidden" value="${vocBoardDto.vocBoard.id}" name="id"/>
  		<div class="form-group">	
  			<label for="title">Title:</label>
    		<input value="${vocBoardDto.vocBoard.title}" type="text" class="form-control" placeholder="title" id="title" name="title">
  		</div>
  		
  		<div class="form-group">
  			<label for="content">Content:</label>
  			<textarea id="summernote" class="form-control" rows="5" id="content" name="content">${vocBoardDto.vocBoard.content}</textarea>
  		</div>
  		<button type="submit" class="btn btn-primary">수정하기</button>
		</form>
	 </div>
	 </section>
	 <%@ include file="/include/footer.jsp" %>
</body>
</html>