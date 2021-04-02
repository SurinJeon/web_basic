<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="web_basic.jsp_ch13.erp.Title"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 예제위해 Title dto생성  -->
<%Title t = new Title(); %>

<!-- t.settNo(), t.settName() 을 set으로 하기 (setter method 호출한것과 같은 효과)-->
<!-- 타겟은 Title타입을 담도록 만든 t, property는 tNo에 적용하겠다는 뜻, 1은 값 1을 여기에 넣겠다 -->
<c:set target="<%=t %>" property="tNo" value="1"/>
<c:set target="<%=t %>" property="tName" value="사장"/>
<%=t.gettNo() %> <br>
<c:out value="<%=t.gettNo() %>"/> <br>
<!-- 혹은 변수 설정해서 바로 out 출력 가능 -->
<c:set var="tt" value="<%=t.gettNo() %>"/>
<c:out value=" ${tt}"/>

<%=t.gettName() %> <br>

<!-- 그런데 t.gettNo() 저렇게 < %=%> 쓰는거 귀찮다.! -->

<c:set var="m" value="<%=t %>"/> <!-- t객체 자체를 다시 var로 이 안에서 선언해주면 $ { 이 태그로 쉽게 사용 가능 -->
직책번호: ${ m.tNo } <br> <!-- m의 gettNo()와 같음! -->
직책명: ${ m.tName } <br>

<hr>

<!-- Title t를 m으로 변수설정한거에 다시 그 안의 속성들도 바꿈 -->
<c:set target="${m}" property="tNo" value="2"/>
<c:set target="${m}" property="tName" value="부장"/>
직책번호: ${ m.tNo } <br> 
직책명: ${ m.tName } <br>

<hr>

<!-- map을 외부에서 만들어서 여기로 던져주면 사용할 수 있음(key-value) -->
<% Map<String, String> prop = new HashMap<>();%>

<!-- map에 put해주기 prop.put("key", "value") // key가 property가 됨-->
<c:set target="<%=prop %>" property="color" value="red"/>
<%=prop.get("color") %> 

<!-- $에 \{로\} 접근할 수 있도록 변수설정 -->
<c:set var="pro" value="<%=prop %>"/> <br>

${pro.color}

<hr>

<c:set var="name" value="짱짱수린"/> <!-- String name = "짱짱수린" -->
이름: ${name} <br>

<hr>

<%Title t2 = new Title(); %>
<c:set var="title" value="<%=t2 %>"/> <!-- Title title = t2 -->
<c:set target="${title}" property="tName" value="짱수린"/> <!-- title.settName("짱수린") -->
직책명: ${title.tName}  <!-- title.gettName() -->

<br>

<c:set target="${title}" property="tNo" value="3"/> <!-- title.settNo("3") -->
직책명: ${title.tNo}  <!-- title.gettNo() -->


<hr>

<%
	Title test = new Title();
	test.settNo(4);
	test.settName("대리");
%>

직책번호: <%=test.gettNo() %> <br>
직책명: <%=test.gettName() %>

<hr>

<% Title test2 = new Title(); %>
<c:set var="mm" value="<%=test2 %>"/>
<c:set target="${mm}" property="tNo" value="5"/>
<c:set target="${mm}" property="tName" value="사원"/>

직책번호: ${mm.tNo } <br>
직책명: ${mm.tName } <br>
<!-- 아래처럼 c:out 써도 되긴 한데 길어서 잘 안 쓴다 -->
<c:out value= "${mm.tNo }" /> <br>
<c:out value= "${mm.tName }"/> <br>

<hr>

<!-- 변수 삭제 -->
<c:remove var="mm"/>

변수삭제
<c:out value="${mm }"/> <!-- 안 뜸 -->





