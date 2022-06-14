<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.ac.kopo.member.MemberVO" %>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
%>
<%
	/*
	${sessionScope.id}를 쓰면 아래는 필요 없음
	String id = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password"); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 설정된 ID: <%= id %><br> --%>
	설정된 ID: ${ sessionScope.member.id }<br>
	설정된 PASSWORD : ${ member.password }<br>
	
	<a href="remove.jsp">세션 삭제</a><br>
	<a href="makeForm.jsp">세션 만들기</a>
	
</body>
</html>