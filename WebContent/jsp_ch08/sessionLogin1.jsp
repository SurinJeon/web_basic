<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		#loginArea{
			width: 400px;
			margin: auto;
			border: 1px solid black;
		}
		
		table{
			margin: auto;
		}
		
		td{
			text-align: center;
		}
	</style>
</head>
<body>
	<section id = "loginArea">
	<form action="sessionLogin2.jsp" method = "get"> <!-- 정보 잘 넘어가는지 일단 get방식으로 -->
		<table>
			<tr>
				<td> <label for = "id">아이디: </label> </td>
				<td> <input type = "text" name = "id" id = "id"> </td>
			</tr>
			<tr>
				<td> <label for = "pass">비밀번호: </label> </td>
				<td> <input type = "password" name = "pass" id = "pass"> </td> <!-- password 형식으로 넣어도 get이면 주소창에 다 보임 -->
			</tr>			
			<tr>
				<td colspan = "2"><input type = "submit" value = "로그인">
					<input type = "reset" value = "다시 작성"> </td>
			</tr>
		</table>
	</form>
	</section>
</body>
</html>























