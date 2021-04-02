<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Map<String, Object> mapData = new HashMap<String, Object>();
	mapData.put("name", "짱수린");
	mapData.put("today", new Date());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use c:forEach</title>
</head>
<body>
	<h4>1부터 100까지의 짝수 합</h4>
	
	<!-- 누적 위한 변수 설정 -->
	<c:set var="sum" value="0"/>
	
	<c:forEach var="i" begin="0" end="100" step="2">
		<c:set var="sum" value="${sum+i}"/>
	</c:forEach>
	
	결과: ${sum}
	
	<hr>
	
	<h4>구구단 4단</h4>
	<!--  4 * 1 = 4 -->
	
	<c:forEach var="i" begin="1" end="9">
		4 * ${i } = ${4*i} <br>
	</c:forEach>
	
	<hr>
	
	<c:set var="intArr" value="<%=new Integer[]{1, 2, 3, 4, 5} %>"/>
	<h4>int형 배열</h4>
	
	<c:forEach var="i" items="${intArr }" begin="0" end="4" varStatus="status">
		${status.index } <!-- intArr의 index가 찍힘 --> >> ${status.count } >> i : ${i } <br>
	</c:forEach>
	
	<hr>
	<h4>Map</h4>
	<c:set var="map" value="<%=mapData %>" />
	<c:forEach var="i" items="${map }"> <!-- 확장 for문이라 생각하기 >> map의 key를 i가 받아옴 -->
		${i.key } >> ${i.value } <br>
	</c:forEach>			
</body>
</html>