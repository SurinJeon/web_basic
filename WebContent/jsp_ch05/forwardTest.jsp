<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>포워드 액션 테스트</title>
</head>
<body>
	<form action="forwardTest1.jsp" method= "get"> <!-- method 안 적으면 기본적으로 get임(학습상 이유로 일단 get방식 함) --> <!-- 일단 전송 누르면 이 페이지로 넘어간다 -->
	<input type= "hidden" name="forwardPage" value="forwardTest2.jsp"> <!-- 다음 페이지에서 포워딩할 때 필요한 그 파일명을 여기서 hidden으로 심어서 보냄 -->
	<table>
		<tr>
			<td> 이름    </td>
			<td> <input type= "text" name= "name"> </td>
		</tr>
		
		<tr>
			<td> 나이    </td>
			<td> <input type= "text" name= "age"> </td>
		</tr>
		
		<tr>
			<td> 주소    </td>
			<td> <input type= "text" name= "address"> </td>
		</tr>
		
		<tr>
			<td> <input type= "submit" value= "전송"> </td>
		</tr>
	</table>
	</form>
</body>
</html>