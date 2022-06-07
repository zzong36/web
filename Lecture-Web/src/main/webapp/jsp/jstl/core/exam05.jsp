<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core: forEach 태그</title>
</head>
<body>
	<h2>1~10 사이의 정수 출력</h2>
	<c:forEach var="i" begin="1" end="10">
	${ i }
	</c:forEach>
	<br>
	년도 선택 : 
	<select>
		<c:forEach begin="1970" end="2022" step="10" var="year">
		<option>${year }</option>
		</c:forEach>
	</select>
</body>
</html>