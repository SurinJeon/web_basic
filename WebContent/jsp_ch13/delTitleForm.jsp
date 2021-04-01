<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/web_basic/jsp_ch13/css/titleMenu_style.css">
</head>
<body>
	<ul>
		<li> <a href="/web_basic/jsp_ch13/titleServlet"> 목록보기</a></li>
		<li> <a href="newTitleForm.jsp"> 직책추가</a></li>
		<li> <a href="upTitleForm.jsp">직책수정</a></li>
		<li> <a href="delTitleForm.jsp">직책삭제</a></li>
	</ul>
	
	<form action="titleDelete" method="post">
		<fieldset>
			<legend>직책 삭제</legend>
			<table>
				<tr>
					<td><label for="tNo">직책 번호: </label></td>
					<td><input type="text" id="tNo" name="tNo"></td>
				</tr>
				
			</table>
			<input type="submit" value="수정">
		</fieldset>
	</form>
</body>
</html>