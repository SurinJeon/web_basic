<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use c:if</title>
</head>
<body>
	<c:if test="true">
		무조건 수행<br>
	</c:if>
	
	param.name=${param.name} <br>
	param.age=${param.age} <br>
	
	<!-- ==쓰거나 eq쓰거나 -->
<%-- 	<c:if test="${param.name == 'abc'}"> --%>
	<c:if test="${param.name eq 'abc'}">
		name parameter value = param.name=${param.name} <br>
	</c:if> <!-- parameter name 이 abc와 같을 경우에만 해당 문장 수행할 수 있음 -->
	
	<c:if test="${18 < param.age}">
		Your age is over 18. <br>
	</c:if>
</body>
</html>