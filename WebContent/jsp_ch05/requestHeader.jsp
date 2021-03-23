<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>헤더 정보 예제</title>
	<style type="text/css">
		h1{
			text-align: center;
		}
	
		table{
 			margin: auto; 
			width: 700;
			border: 1px solid red;
		}
		
		#values{
			width: 500px
		}
	</style>
</head>
<body>
	<ul id = "menu">
		<li> <a href = "#header"> 헤더 정보 예제</a> </li>
		<li> <a href = "#cookie"> 쿠키, URL/URI 정보 예제 </a></li>
	</ul>
	
	<h1 id = "hearder"> 헤더 정보 예제 </h1>
	<table>
		<tr> 
			<th> 헤더이름 </th>
			<td> 헤더값 </td>
		</tr>
		<%
		Enumeration<String> e = request.getHeaderNames();
		while(e.hasMoreElements()){ // e에 그 다음 요소가 존재할때까지 반복문
			String headerName = e.nextElement();
		%>
			
			<tr>
				<td> <%=headerName %> </td>
				<td id = values> <%=request.getHeader(headerName) %> </td>
			</tr>
		
		<%
		}
		%>
	</table>
	
	<hr>
	
	<h1 id = "cookie"> 쿠키, URL/URI 요청 방식에 관련된 정보 예제</h1>
	
	<table>
		<tr>
			<td> 쿠키정보 </td>
		<%
		Cookie[] cookie = request.getCookies();
		if(cookie == null){
		%>
			<td> 쿠키가 존재하지 않습니다. </td>
		<%
		} else {
			for(int i = 0; i < cookie.length; i++){
		%>
			<td> <%=cookie[i].getName() %> (<%=cookie[i].getValue() %>)&nbsp;&nbsp; </td> <!-- %nbsp;는 공백을 의미 -->
		<%
			}
		}
		%>
		</tr>

		<tr>
			<td> 서버 도메인명 </td>
			<td> <%=request.getServerName() %> </td>
		</tr>		
		
		<tr>
			<td> 서버 포트번호 </td>
			<td> <%=request.getServerPort() %> </td>
		</tr>
		
		<tr>
			<td> 요청 URL </td>
			<td> <%=request.getRequestURL() %> </td>
		</tr>
		
		<tr>
			<td> 요청 URI </td>
			<td> <%=request.getRequestURI() %> </td>
		</tr>
		
		<tr>
			<td> 요청쿼리 </td>
			<td> <%=request.getQueryString() %> </td>
		</tr>
		
		<tr>
			<td> 클라이언트 호스트명 </td>
			<td> <%=request.getRemoteHost() %> </td>
		</tr>
		
		<tr>
			<td> 클라이언트 IP주소 </td>
			<td> <%=request.getRemoteAddr() %> </td>
		</tr>
		
		<tr>
			<td> 프로토콜 </td>
			<td> <%=request.getProtocol() %> </td>
		</tr>
		
		<tr>
			<td> 요청 방식 </td>
			<td> <%=request.getMethod() %> </td>
		</tr>
		
		<tr>
			<td> 컨텍스트 경로 </td>
			<td> <%=request.getContextPath() %> </td>
		</tr>
	</table>
</body>

</html>