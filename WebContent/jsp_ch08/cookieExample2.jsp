<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie = new Cookie("language", request.getParameter("language"));
	cookie.setMaxAge(60*60*24); //하루동안
	response.addCookie(cookie);
%>

<script>
	location.href = "cookieExample1.jsp"; /* 쿠키 설정만 바꾸고 다시 원래 페이지로 넘겨버리는 파일 */
</script>
