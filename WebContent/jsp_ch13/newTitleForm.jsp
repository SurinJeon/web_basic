<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 추가</title>
<link rel="stylesheet" href="css/newTitleForm_style.css">
<link rel="stylesheet" href="/web_basic/jsp_ch13/css/titleMenu_style.css">
</head>
<body>

	<ul>
		<li> <a href="/web_basic/jsp_ch13/titleServlet"> 목록보기</a></li>
		<li> <a href="newTitleForm.jsp"> 직책추가</a></li>
		<li> <a href="upTitleForm.jsp">직책수정</a></li>
		<li> <a href="delTitleForm.jsp">직책삭제</a></li>
	</ul>
	
	<form action="titleInsert" method="post">
		<fieldset>
			<legend>직책 추가</legend>
			<table>
				<tr>
					<td><label for="tNo">직책 번호: </label></td>
					<td><input type="text" id="tNo" name="tNo"></td>
				</tr>
				<tr>
					<td><label for="tName">직책 이름: </label></td>
					<td><input type="text" id="tName" name="tName"></td>
				</tr>
			</table>
			<input type="submit" value="추가">
		</fieldset>

	</form>
</body>
</html>