<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String language = "kor";
	String cookie = request.getHeader("Cookie");
	
	if (cookie != null){
		Cookie[] cookies = request.getCookies();
		
		for (int i = 0; i < cookies.length; i++){
			if (cookies[i].getName().equals("language")){
				language = cookies[i].getValue();				
			}
		}
	}
%>
<html>
<head>
	<title>쿠키를 이용한 화면 설정 예제</title>
</head>
<body>
	<%if(language.equals("kor")){ %>
	<h3>안녕하세요. 한국어 설정입니다.</h3>
	<%} else{ %>
	<h3>Hello. This is English language setting.</h3>
	<%} %>
	
	<form action="cookieExample2.jsp" method = "get">
		<!-- 안에 checked 넣는 이유는 쿠키가 미리 언어설정 되어있으면 거기에 맞는 라디오버튼 체크되어있게 만들기 위해! -->
		<input type = "radio" name = "language"  value = "kor"
			<%if(language.equals("kor")) {%>
				checked
			<%} %>
		>한국어 페이지 보기
		<input type = "radio" name = "language"  value = "eng"
			<%if(language.equals("eng")) {%>
				checked
			<%} %>
		>영어 페이지 보기
		
		<input type = "submit" value = "설정">
	</form>
</body>
</html>