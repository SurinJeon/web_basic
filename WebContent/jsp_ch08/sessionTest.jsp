<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
  String name;
  if (session.getAttribute("name") != null) {
  	name = (String) session.getAttribute("name");
  } else {
  	name = "세션 값 없음";
  }

  String id;
  if (session.getAttribute("id") != null) {
  	id = (String) session.getAttribute("id");
  } else {
  	id = "id 값 없음";
  }
  %>

<%
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date time = new Date();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Session Test</title>
</head>
<body>
	<h2>세션 테스트</h2>
	<!-- location.href는 주소창을 의미<< 거기에 뒤의 jsp 파일 이름을 넣어라는 뜻! -->
	<input type = "button" onclick = "location.href = 'sessionSet.jsp' " value = "세션 값 저장" >
	<input type = "button" onclick = "location.href = 'sessionDel.jsp' " value = "세션 값 삭제" >
	<input type = "button" onclick = "location.href = 'sessionInvalidate.jsp' " value = "세션 초기화" > <!-- 세션ID가 바뀜 << logout때 사용 -->
	<h3><%=name %></h3>
	<h3><%=id %></h3>
	
	<hr>
	
	
	<% time.setTime(session.getCreationTime()); %>
	<label>세션 생성 시간: <%=format.format(time) %></label>
	<br>
	<% time.setTime(session.getLastAccessedTime()); %>
	<label>마지막 접근 시간: <%=format.format(time) %></label>
	<br>
	<label>세션 ID: <%=session.getId() %></label>
</body>
</html>