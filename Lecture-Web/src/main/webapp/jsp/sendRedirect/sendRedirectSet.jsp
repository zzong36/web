<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 화면</title>
</head>
<body>
	<h2>결과화면</h2>
	<c:if test="${ param.id == 'admin' }">
	<!-- 어쩔 수 없이 자바스크립트를 써야 함 MVC 패턴가면 안써도 됨 -->
	<%
		response.sendRedirect("admin.jsp");
	%>
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
	<%
	/* 공유영역에 등록해봤자 재요청하면서 접근할 수 없어지므로 아래와 같이 쓰는건 의미 없음
		request.setAttribute("id", request.getParameter("id"));
		그러므로 아래와 같이 써야 함
	*/
		response.sendRedirect("user.jsp?id=" + request.getParameter("id"));
	%>
	</c:if>
	끝!!!
</body>
</html>