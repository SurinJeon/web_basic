<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String fileName1 = request.getParameter("fileName1");
	String fileName2 = request.getParameter("fileName2");
	String origfileName1 = request.getParameter("origfileName1");
	String origfileName2 = request.getParameter("origfileName2");
%>

<%
	if (name == null){
		name = (String)request.getAttribute("name");
		subject = (String)request.getAttribute("subject");
		fileName1 = (String)request.getAttribute("fileName1");
		System.out.println(fileName1);
		fileName2 = (String)request.getAttribute("fileName2");
		System.out.println(fileName2);
		origfileName1 = (String)request.getAttribute("origfileName1");
		origfileName2 = (String)request.getAttribute("origfileName2");
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 확인 및 다운로드</title>
</head>
<body>
	올린 사람: <%=name %> <br>
	제목: <%=subject %> <br>
	파일명1 :<a href="/web_basic/upload/<%=fileName1 %>"><%=origfileName1 %></a><br>
	파일명2 :<a href="/web_basic/upload/<%=fileName2 %>"><%=origfileName2 %></a><br>
</body>
</html>