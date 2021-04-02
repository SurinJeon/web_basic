<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="web_basic.erp.ds.JndiDS" %>

<c:set var="con" value="${JndiDS.getConnection() }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연동 테스트</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- 	<c:out value="${con }"/> --%>
	<fieldset>
		<legend>ERP</legend>
		<ul>
			<li> <a href="TitleServlet">직책 관리</a> </li>
			<li> <a href="DeptServlet">부서 관리 </a> </li>
			<li> <a href="EmpServlet">사원 관리 </a> </li>
		</ul>
	</fieldset>
</body>
</html>