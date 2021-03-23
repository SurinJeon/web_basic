<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	String id = (String)session.getAttribute("id");
	boolean isLogin = (id == null) ? false : true; /* null과 같으면 false, 아니면 로그인 된 상태니까 true */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 검사</title>
</head>
<body>
	<%
		if (isLogin){
	%>
		아이디 "<%=id %>"로 로그인한 상태
	
	<%
		} else{
	%>
	
		로그인 하지 않은 상태
	<%
		}
	%>
</body>
</html>