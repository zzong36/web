<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.ac.kopo.member.MemberVO"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");

	MemberVO member = new MemberVO();
	member.setId(id);
	member.setPassword(password);

//세션등록
session.setAttribute("member", member);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 설정 완료</h2>
	<a href="get.jsp">설정된 세션정보 확인</a>
</body>
</html>