<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>partUploadForm1</title>
</head>
<body>
	<form action="partUploadPro1" method="post" enctype="multipart/form-data">
		<label for="writer">작성자: </label>
		<input type="text" name="writer" id="writer"> <br>
		<label for="partFile1">업로드 파일: </label> 
		<input type="file" name="partFile1" id="partFile1"> <br>
		
		<input type="submit" value="단일업로드">
	</form>
	
</body>
</html>