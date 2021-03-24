<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="std" class="web_basic.jsp_ch07.Student" scope="page"/>

<jsp:setProperty property="*" name="std"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JavaBean Test</title>
</head>
<!-- 앞 페이지에서 넘겨줄 때 stdNo 변수 맞춰줘야 찾아감 (내부적으로 servlet으로 변환되기 때문)-->
<body>
	<h1>자바빈 속성 값 출력 by get method</h1>
	<b>학번: </b> <%=std.getStdNo() %> <br>
	<b>이름: </b> <%=std.getStdName() %> <br>
	<b>국어: </b> <%=std.getKor() %> <br>
	<b>영어: </b> <%=std.getEng() %> <br>
	<b>수학: </b> <%=std.getMath() %> <br>
	<b>총합: </b> <%=std.getTotal() %> <br>
	<b>평균: </b> <%=std.getAvg() %> <br>
	
	<hr>
	
	<h1>자바빈 속성 값 출력 by getProperty</h1>
	<b>학번: </b> <jsp:getProperty property="stdNo" name="std"/> <br>
	<b>이름: </b> <jsp:getProperty property="stdName" name="std"/> <br>
	<b>국어: </b> <jsp:getProperty property="kor" name="std"/> <br>
	<b>영어: </b> <jsp:getProperty property="eng" name="std"/> <br>
	<b>수학: </b> <jsp:getProperty property="math" name="std"/> <br>
	<b>총합: </b> <jsp:getProperty property="total" name="std"/> <br>
	<b>평균: </b> <jsp:getProperty property="avg" name="std"/> <br>
</body>
</html>