<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>학생 성적 입력</title>
	<style type="text/css">
		ul{
			list-style: none;
		}
	</style>
</head>
<body>
	<h1>학생 성적 입력</h1>
	<form action="beanTest2.jsp" method="get">
	<fieldset>
		<ul>
			<li>
			<label for = "no">학번: </label> <input type= "text" name = "stdNo" id = "no">
			</li>
			
			<li>
			<label for = "name">이름: </label> <input type= "text" name = "stdName" id = "name">
			</li>
			
			<li>
			<label for = "kor">국어: </label> <input type= "text" name = "kor" id = "kor">
			</li>
			
			<li>
			<label for = "eng">영어: </label> <input type= "text" name = "eng" id = "eng">
			</li>
			
			<li>
			<label for = "math">수학: </label> <input type= "text" name = "math" id = "math">
			</li>
		</ul>
		<input type= "submit" value="전송">	
	</fieldset>
	</form>
</body>
</html>