<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file ="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Include Text</title>
</head>
<body>
<%
	request.setAttribute("phone", "010-1111-2222");
%>
	msg: <%= msg %><br>
	<h2>인클루드 전</h2>
	<jsp:include page ="one.jsp" />
	<jsp:include page="one.jsp">
	<jsp:param value="hong" name="name"/>
	 </jsp:include>
	<h2>인클루드 후</h2>
	 phone: ${ phone }<br>
</body>
</html>