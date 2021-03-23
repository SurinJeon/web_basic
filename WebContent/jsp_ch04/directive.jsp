<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer = "8kb" autoFlush = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	버퍼의 크기: <%=out.getBufferSize() %> <!-- 여기서도 out은 println 쓸 수 있는 그거 말함!(기본객체임) -->
	<br>
	남은 크기: <%=out.getRemaining() %>
	<br>
	auto Flush: <%=out.isAutoFlush() %>
</body>
</html>