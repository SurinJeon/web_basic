<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "errorProcessing"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error page</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
	if (name == null){
		throw new NullPointerException();
	}
	%>
</body>
</html>