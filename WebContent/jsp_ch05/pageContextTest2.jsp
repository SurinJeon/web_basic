<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
	%>
	request와 pageContext.getRequest()와 동일 여부: <!-- request의 정보는 그대로 pageContext의 getRequest()에 들어감 -->
	<%=request == httpRequest %>
	
	<%
	pageContext.include("pageContextTest3.jsp"); // include했기 때문에 여기 수행하고 아래 <h2></h2>문장 수행될 수 있는 것!
	%>

	<h2> pageContextTest1의 forward메소드로 포워딩된 페이지입니다. </h2>
	
	<br>
	pageContext.getOut() 메서드를 사용한 데이터 출력 (pageContext.getOut().println()) 
	<br>
	
	<%
		pageContext.getOut().println("안녕하세요!");
	%>

</body>
</html>