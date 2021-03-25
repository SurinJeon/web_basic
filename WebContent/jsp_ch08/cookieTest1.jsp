<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie = new Cookie("name", "hongkildong"); // 쿠키 객체 생성
	cookie.setMaxAge(600); // 600초 유효기간 설정
	response.addCookie(cookie); // 쿠키 추가함
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cookie Test</title>
</head>
<body>
	<h2>쿠키 name: <%=cookie.getName() %></h2>
	<h2>쿠키 value: <%=cookie.getValue() %></h2>
	<h2>쿠키 생존기간: <%=cookie.getMaxAge() %></h2>
	<a href = "cookieTest2.jsp">쿠키 값 불러오기</a>
</body>
</html>