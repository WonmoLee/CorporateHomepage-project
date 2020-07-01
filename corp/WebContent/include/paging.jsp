<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/corp/css/kakao.css">

	
	<c:set var="pagePrev" value="/corp/support?cmd=voiceOfCust&page=${param.page-1}"/>
	<c:set var="pageNext" value="/corp/support?cmd=voiceOfCust&page=${param.page+1}"/>
	

	<ul class="pagination justify-content-center">
	<c:choose>
		<c:when test="${param.page == 0}">
		<li class="page-item disabled" style="border-bottom:0px;"><a class="page-link" href="${pageScope.pagePrev}">Previous</a></li>
		</c:when>
		<c:otherwise>
		<li class="page-item" style="border-bottom:0px;"><a class="page-link" href="${pageScope.pagePrev}">Previous</a></li>
		</c:otherwise>
	</c:choose>
		
	<c:choose>
		<c:when test="${lastPage == param.page}">
			<li class="page-item disabled" style="border-bottom:0px;"><a class="page-link" href="${pageScope.pageNext}">Next</a></li>
		</c:when>
		<c:otherwise>
			<li class="page-item" style="border-bottom:0px;"><a class="page-link" href="${pageScope.pageNext}">Next</a></li>
		</c:otherwise>
	</c:choose>
	</ul> 
