<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1~10사이의 정수 출력</h1>
	<%
	for(int i = 0; i < 10; i++){
		out.println(i+1 + "<br>");
	}
	%>
</body>
</html>