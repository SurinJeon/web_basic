<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 선언문 위치에 관계없이 설정해도 됨 -->
<%!
private String str = "선언문";

private String getStr(){
	str += "테스트 입니다.";
	return str;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= getStr() %></h1>
</body>
</html>