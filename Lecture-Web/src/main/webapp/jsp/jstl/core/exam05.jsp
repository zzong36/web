<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String[] names = {"홍길동", "김길동", "윤길동", "박길동"};

	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length-1);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>core: forEach 태그</title>
</head>
<body>

	이름 배열의 개수 : ${ fn:length(names) }<br>

	<%-- 최근 사용하는 방식 
	loop: 정보를 저장
	--%>
		<c:forEach items="${ names }" var="name" varStatus="loop">
		<%-- ${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br> --%>
		<c:if test="${ not loop.first }">
		,
		</c:if>
		${ name }
	</c:forEach> 

	<br>
	<%-- 과거에 사용하던 방식 --%>
	<c:set var="cnt" value="1" />
	<c:forEach items="${ names }" var="name">
	<c:if test="${cnt ne 1}">
		,
		</c:if>
	${ name }
	<c:set var="cnt" value="${ cnt+1 }"/>
	</c:forEach>
	<br>

	<c:forEach var="i" begin="0" end="${ fn:length(names)-1 }">
		${ names[i] }
		<c:if test="${i ne fn:length(names)-1}">
		,
		</c:if>
	</c:forEach> 
	<br>

	<c:forEach items="${ names }" var="name" begin="0" end="3">
		${ name }
	</c:forEach> 

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