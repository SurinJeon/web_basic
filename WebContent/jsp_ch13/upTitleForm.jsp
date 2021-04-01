<%@page import="web_basic.jsp_ch13.erp.Title"%>
<%@page import="java.util.List"%>
<%@page import="web_basic.jsp_ch13.erp.TitleService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	TitleService service = new TitleService();
	List<Title> list = service.showTitles();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 수정</title>
<link rel="stylesheet" href="/web_basic/jsp_ch13/css/titleMenu_style.css">
</head>
<body>
	<ul>
		<li> <a href="/web_basic/jsp_ch13/titleServlet"> 목록보기</a></li>
		<li> <a href="newTitleForm.jsp"> 직책추가</a></li>
		<li> <a href="upTitleForm.jsp">직책수정</a></li>
		<li> <a href="delTitleForm.jsp">직책삭제</a></li>
	</ul>
	
	<form action="titleUpdate" method="post">
		<fieldset>
			<legend>직책 수정</legend>
			<table>
				<tr>
					<td><label for="tNo">직책 번호: </label></td>
					<td> <select size="1" id="tNo" name="tNo">
						<%
						for(int i = 0; i < list.size(); i++){
						%>
							<option  value="<%=list.get(i).gettNo() %>"><%=i + 1 %></option>						
						<% }
						%>
						
						</select> </td>
				
				</tr>
				<tr>
					<td><label for="tName">직책 이름: </label></td>
					<td><input type="text" id="tName" name="tName"></td>
				</tr>
			</table>
			<input type="submit" value="수정">
		</fieldset>
	</form>
</body>
</html>