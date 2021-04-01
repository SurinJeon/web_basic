<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/native_jdbc?useSSL=false";
	
	Boolean connect = false;
	
	Class.forName(driver);
	
	try (Connection conn = DriverManager.getConnection(url, "user_native_jdbc", "rootroot");) { /* try-catch-resource문에서는 변수 선언과 동시에 초기화 해주어야함 */
		connect = true;
	} catch (Exception e) {
		connect = false;
		e.printStackTrace();
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 연동 테스트 예제</title>
</head>
<body>
	<h3>
		<%
			if (connect == true) {
		%>
			연결되었습니다.
		<%
			} else {
		%>
			연결에 실패하였습니다.
		<%
			}
		%>
	</h3>
</body>
</html>