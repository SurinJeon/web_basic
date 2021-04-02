<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use c_choose</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name eq 'abc'}">
			Your name is 'abc'. <br>
		</c:when>
		
		<c:when test="${param.name eq 'def' }">
			Your name is 'def'. <br>
		</c:when>

		<c:otherwise>
			Your name is otherwise. <br>
		</c:otherwise>		
	</c:choose>
</body>
</html>