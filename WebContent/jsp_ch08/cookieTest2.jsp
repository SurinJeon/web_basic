<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "";
	String value = "";
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null){
		Cookie cookies[] = request.getCookies();
		
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("name")){
				name = cookies[i].getName();
				value = cookies[i].getValue();
			}
		} // 쿠키 배열 객체에 담긴 것 중에서 name이라는 이름 가진 쿠키 객체 검색하고, 거기 값을 찾기 위한 반복문
		
	}
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cookie Test</title>
</head>
<body>
	<h2>쿠키 name: <%=name %></h2>
	<h2>쿠키 value: <%=value %></h2>
</body>
</html>