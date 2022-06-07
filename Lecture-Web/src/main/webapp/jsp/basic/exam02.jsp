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
	int sum = 0;
	for(int i = 1; i <=10; i++){
		sum = sum + i;
	%>
		<%=i %><br>
	<% 
	}
	%>
	<!-- 굳이 out.println()을 쓸 필요가 없다 -->
	1~10 사이의 총합 <%=sum %><br>
</body>
</html>