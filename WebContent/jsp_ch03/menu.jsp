<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id"); /* session에 있는 id를 변수로 담고, 이걸 if문으로 넘김 */
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메뉴 화면</title>
</head>
<body>
	<%
		if (id == null){ /* id가 null이라면 로그인 하도록 넘김 */
	%>
	<a href = "login.jsp">로그인</a>
	<%
		} else{
	%>
		<%= id %> 님 환영합니다.<br> <!-- null이 아니라면 환영합니다! -->
		<a href = "logout.jsp">로그아웃</a> <!-- 이렇게 넘어가면 logout의 session.invalidate()때문에 session이 없음<< 그러면 다시 로그인하라고 뜬다 -->
		
	<%} %>
</body>
</html>