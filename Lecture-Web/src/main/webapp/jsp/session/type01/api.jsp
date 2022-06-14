<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>

<%
		String id = session.getId();
int interval = session.getMaxInactiveInterval();

// 세션 유효시간 변경(2초)
session.setMaxInactiveInterval(2);
int interval2 = session.getMaxInactiveInterval();

// 마지막 접근시간
long lastTime = session.getLastAccessedTime();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session API</title>
</head>
<body>
	<h2>ID(JSESSIONID): <%= id %> </h2>
	<h2>유효시간: <%= interval/60 %>분</h2>
	<h2>변경된 유효시간: <%= interval2 %>초</h2>
	<h2>마지막 접근 시간: <%= sdf.format(new Date(lastTime)) %></h2>
</body>
</html>