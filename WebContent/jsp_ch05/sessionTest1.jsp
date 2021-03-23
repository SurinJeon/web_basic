<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.setMaxInactiveInterval(10); // 세션 유지시간 최대 10초로 두겠다.
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Session Test</title>
</head>
<body>
	<h2> 세션 테스트 </h2>
	isNew(): <%=session.isNew() %> <!-- 10초가 지나지 않았을때 새로고침하면 false(새고할때마다 10초임), 아니면 다시 만들어졌기 때문에 true가 뜬다 -->
	<br>
	생성시간: <%=session.getCreationTime() %>
	<br>
	최종 접속 시간: <%=session.getLastAccessedTime() %>
	<br>
	세션 ID: <%=session.getId() %>
	<br>
</body>
</html>