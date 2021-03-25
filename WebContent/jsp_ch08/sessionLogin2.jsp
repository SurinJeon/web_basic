<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("id", request.getParameter("id")); // 로그인 창으로 넘어왔을때 세션에 값을 저장해줘야함
%>
<html>
<head>
	<title>Session Login</title>
</head>
<body>
	<h3>로그인되었습니다.</h3>
	<h3>로그인 아이디: <%=(String)session.getAttribute("id") %></h3>
	<a href = "sessionLogout.jsp">로그아웃</a>
</body>
</html>