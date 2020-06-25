<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
<div class="d-flex justify-content-center">

   <form action="/corp/user?cmd=profileUploadProc" method="post" enctype="multipart/form-data">
      <div class="form-group">

         <img id = "img__wrap" onerror="this.src='/corp/static/img/userProfile.png'" 
         	src="${sessionScope.principal.userProfile}" width="350px" height="300px" />

      </div>
      <div class= "form-group">

         <input type="file" name="userProfile" id="img__preview" />

      </div>

        <input type="hidden" name="id" value="${sessionScope.principal.id}" />

      <div class="form-group">
      	<button class="btn btn-primary w-100">사진전송</button>
      </div>
   </form>
   </div>
</div>

<script src="/corp/js/imgPreview.js"></script>