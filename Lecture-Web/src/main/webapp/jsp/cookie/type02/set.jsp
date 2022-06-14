<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String cName = request.getParameter("cName");
String cValue = request.getParameter("cValue");

//encoding
cName = URLEncoder.encode(cName, "utf-8");
cValue = URLEncoder.encode(cValue, "utf-8");

//쿠키 생성
Cookie cookie = new Cookie(cName, cValue);
// 쿠키 생성후 저장은 클라이언트 몫(사용자 컴퓨터에 저장되므로)
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set</title>
</head>
<body>
	<h2>쿠키설정완료</h2>

	<!-- 내가 만든 쿠키 확인 -->
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>