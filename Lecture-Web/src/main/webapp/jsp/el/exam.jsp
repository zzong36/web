<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="exam02.jsp" method="get">
	
	아이디:   <input type="text" name="id"><br>
	이름:   <input type="text" name="name"><br>
	취미: 
	<!-- value를 써주지 않으면 on이 날아간다 -->
	<input type="checkbox" name="hobby" value="reading">reading
	<input type="checkbox" name="hobby" value="music">music
	<input type="checkbox" name="hobby" value="movie">movie
	<input type="submit" value="GET방식 호출">	<br>
	</form>
	
</body>
</html>
