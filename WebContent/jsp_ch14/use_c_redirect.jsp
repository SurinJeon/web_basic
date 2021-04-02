<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use_c:url And c:redirect</title>
</head>
<body>
	<h4>url을 생성해주는 태그(c:url)</h4> <!-- 아무런 기능 없이 걍 url생성해주는 것 -->
	<c:url value="http://search.daum.net/search" var="searchURL">
		<c:param name="w" value="blog"/>
		<c:param name="q" value="공원"/> <!-- 이건 한글이라 인코딩되어서 들어감 -->
	</c:url>
	${searchURL }
	
	<c:redirect url="${searchURL }"/> <!-- 생성한 페이지로 바로 redirect보냄  -->
	<hr>
	
	<br>
	<c:url value="/use_c_url.jsp"/> <!-- 절대경로 -->
	<br>
	<c:url value="./use_c_url.jsp"/> <!-- 상대경로 -->
</body>
</html>