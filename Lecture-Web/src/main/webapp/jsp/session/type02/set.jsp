<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 세션등록
	session.setAttribute("id", id);
	session.setAttribute("password", password);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 설정 완료</h2>
	<a href="get.jsp"> 설정된 세션 정보 확인</a>
</body>
</html>