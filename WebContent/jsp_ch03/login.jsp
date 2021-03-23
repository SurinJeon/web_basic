<!-- 이건 jsp나 html 파일로 작성해도 상관 x -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn</title>
<style type="text/css">
	/* h1{}에서 작성하는걸 <h1></h1>에 적용하겠다!  */
	h1{
		text-align: center; /* 적용하고자하는 것 : 적용하려는것 */
	}
	
	/* 
	해당 LoginFormArea로 섹션 지정한 곳은 이런 스타일을 적용해라
	지금은 id, passwd, submit에 적용될 것
	*/
	
	#loginFormArea{
		text-align : center;
		width : 250px;
		margin : auto;
		border : 1px solid red
	}
</style>
</head>
<body>
	<h1>로그인</h1>
	<section id = "loginFormArea">
		<form action="sessionLogin" method="post"> <!-- 처음에는 get으로 한 번 검사하고, 그 다음에 post로 하기! -->
			<label id = "id"> 아이디 : </label>	<!-- 아이디 label 작성 -->
			<input type = "text" name = "id" id = "id"> <!-- textfield 작성 name은 변수명, value값은 직접 textfield에 입력한 것-->
			<br> <!-- 즐바꿈 -->
			<label id = "passwd"> 비밀번호 : </label>
			<input type = "password" name = "passwd" id = "passwd"> <!-- 이때 name과 id 똑같이 적어서 연결해줘야함 (연결이유는 나중에 css에 나옴ㅎㅎ)-->
			<br><br> <!-- 두 번 줄바꿈 -->
			<input type = "submit" value = "로그인"> <!-- 버튼을 생성해줌 (그 위에 글자는 로그인) -->
		</form>
	</section>
</body>
</html>