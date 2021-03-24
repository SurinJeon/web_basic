<!-- beanTest1 2 한번에 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- useBean 설정 -->
<jsp:useBean id="std" class="web_basic.jsp_ch07.Student" scope="page"/>

<!-- set method 설정 -->
<jsp:setProperty property="stdNo" name="std" value= "11"/>
<jsp:setProperty property="stdName" name="std" value= "짱짱수린"/>
<jsp:setProperty property="kor" name="std" value= "91"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JavaBean</title>
</head>
<body>
	<b>자바빈 사용 예제</b>
	<h3>학번: <%=std.getStdNo() %></h3> <!-- get method 호출해서 화면에 표현하기 -->
	<h3>성명: <%=std.getStdName() %></h3>
	<h3>국어: <%=std.getKor() %></h3>
</body>
</html>