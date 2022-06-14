<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//	session.removeAttribute("id");
//	session.removeAttribute("password");

// 세션에 등록된 정보 한 번에 지우기 가능
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 삭제</title>
</head>
<body>
	<h2>세션 삭제 완료</h2>
	<a href="get.jsp">확인하기</a>
</body>
</html>