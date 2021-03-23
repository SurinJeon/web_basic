<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 	// 로그아웃 위해서는 세션을 삭제해야함.
 	session.invalidate();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	로그아웃 하였습니다. <br>
	<a href = "login.jsp">로그인</a> <!-- 다시 로그인 해라 -->
</body>
</html>