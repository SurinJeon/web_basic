<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
	Date now = new Date(); 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Current Time</title>
</head>
<body>
	Current Time : <%=now %>
</body>
</html>