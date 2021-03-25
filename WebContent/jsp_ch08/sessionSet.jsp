<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	session.setAttribute("name", "Session Test!");
	session.setAttribute("id", "Hello World");

%>

<script type="text/javascript">
	location.href = "sessionTest.jsp"
</script>