<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
<link rel="stylesheet" href="/web_basic/jsp_ch13/css/titleMenu_style.css">
</head>
<body>
	<ul>
		<li> <a href="/web_basic/jsp_ch13/titleServlet"> 목록보기</a></li>
		<li> <a href="newTitleForm.jsp"> 직책추가</a></li>
		<li> <a href="upTitleForm.jsp">직책수정</a></li>
		<li> <a href="delTitleForm.jsp">직책삭제</a></li>
	</ul>
	
	
	<br>
	
	<br>
	
<%-- 	<fieldset id ="list">


		<%
			RequestDispatcher rd = request.getRequestDispatcher("/jsp_ch13/titleServlet");
			rd.include(request, response);
		%>
		
		</fieldset> --%>
	
</body>
</html>