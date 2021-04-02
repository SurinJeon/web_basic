<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>numberFormat</title>
</head>
<body>
	<c:set var="price" value="10000"/>

	<fmt:formatNumber value="${price }" type="number" var="numberType"/> <!-- 1000단위 구분 기호 들어옴 -->
	<br>
	통화: <fmt:formatNumber value="${price }" type="currency" currencySymbol="원"/>
	<br>
	퍼센트: <fmt:formatNumber value="${price }" type="percent" groupingUsed="false"/> <!-- groupingUsed는 위에서 이미 적용된거 빼도록 해줌 -->
	
	<br>
	
	숫자: ${numberType }
	<br>
	패턴1: <fmt:formatNumber value="${price }" pattern="000000.00"/>
	<br>
	패턴2: <fmt:formatNumber value="${price }" pattern="#.00"/>
	<br>
	패턴3: <fmt:formatNumber value="${price }" pattern="\ #,###.00"/>	<!-- 소수점 자리만 맞추고 앞에 1000단위 구분 기호만 오게 하는 방법 -->
	
	<h3>문자를 숫자로 변경</h3>
	<c:set var="strPrice" value="100000"/>
	<fmt:parseNumber value="${strPrice }"/> <br>
	<fmt:parseNumber value= "100,000" pattern="#,###.00"/> <br>
	
	<h3>날짜</h3>
	<c:set var="now" value="<%= new Date()%>"/>
	원래 날짜표시 >> ${now }
	<br>
	formatting >> <fmt:formatDate value="${now}" type="date" dateStyle="full"/>
	<br>
	formatting(short) >> <fmt:formatDate value="${now}" type="date" dateStyle="short"/>
	<br>
	formatting time >> <fmt:formatDate value="${now }" type="time"/>
	<br>
	formatting both >> <fmt:formatDate value="${now }" type="both"/>
	<br>
	formatting pattern1 >> <fmt:formatDate value="${now }" pattern="z a hh:mm"/>
	<br>
	formatting pattern2 >> <fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/>
</body>
</html>






















