<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use_c:catch</title>
</head>
<body>
	name parameter value >> <%=request.getParameter("name")%> <!-- 만약 el태그로 했으면 없다면 null이 아니라 그냥 공백으로 출력함 -->
	
	<br>
	
	<c:catch var="e"> <!-- try-catch와 비슷한 기능 -->
		<% if(request.getParameter("name").equals("test")) {%>
		
			name parameter value: test <br>
		
		<% } %>
	</c:catch>
	${e }
	<br>

	<c:if test="${e eq 'java.lang.NullPointerException'}">
			Exception 발생: ${e}<br>
	</c:if>
</body>
</html>