<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exam03</title>
</head>
<body>
	<%--
		http://localhost:9999/LectureWeb/jsp/jstl/core/exam04.jsp?type=S or
		http://localhost:9999/LectureWeb/jsp/jstl/core/exam04.jsp?type=U
	 --%>
	 
	  <c:if test="${ empty param.type }">
	 <h2>타입을 명시하지 않았습니다</h2>
	 </c:if>
	 
	 <c:if test="${ param.type == 'S' }">
	 <h2>반갑습니다 관리자님</h2>
	 </c:if>
	 
	 <c:if test="${ param.type == 'U' }">
	 <h2>반갑습니다 일반 사용자님</h2>
	 </c:if>
	 
	
	 
</body>
</html>