<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use_c:forTokens</title>
</head>
<body>
	<h4>forTokens 활용</h4>
	<!-- 배열에서 구분자 중심으로 자르고, 다른변수(token)에 담아서 출력 -->
	<c:set var="str" value="red, green, blue"/>
	<c:forTokens var="token" items="${str }" delims=",">
		${token } <br>
	</c:forTokens>
	
	<br>
	
	<c:forTokens var="token" items="red, orange, yellow, green. blue. purple" delims=",."> <!-- delimiters는 두개 같이 써도 가넝 -->
		${token } <br>
	</c:forTokens>
</body>
</html>