<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="web_basic.jsp_ch13.erp.Title"%>
<%@page import="java.util.List" %>

<%
	List<Title> list = (List<Title>)request.getAttribute("list");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/web_basic/jsp_ch13/css/titlelist_style.css">
<link rel="stylesheet" href="/web_basic/jsp_ch13/css/titleMenu_style.css">
</head>
<body>
	<ul>
		<li> <a href="/web_basic/jsp_ch13/titleServlet"> 목록보기</a></li>
		<li> <a href="newTitleForm.jsp"> 직책추가</a></li>
		<li> <a href="upTitleForm.jsp">직책수정</a></li>
		<li> <a href="delTitleForm.jsp">직책삭제</a></li>
	</ul>
	
<div class="container">
<%
	if(list.size() > 0){
		for(Title t : list){
%>				
			<%=t.gettNo() %> <%=t.gettName() %> <br>
<%		
		} 
	}else{
%>			
		데이터가 없음.	
<%
	}
%>

</div>
</body>
</html>