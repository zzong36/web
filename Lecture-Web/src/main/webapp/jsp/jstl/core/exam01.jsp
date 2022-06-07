<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt 선언(page 공유영역)<br>
	<c:set var="cnt" value="1" />
	공유영역에 설정된 cnt 변수 : ${ cnt }<br>
	<%-- cnt에 1 증가 --%>
	<c:set var="cnt" value="${cnt+1 }" scope="request"/>
	cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
	
	<%--
		JSP					EL					JSTL
		----------------------------------------------------
		pageContext			pageScope			page
		request				requestScope		request
		session				sessionScope		session
		application			applicationScope 	application
	 --%>
	
	<%-- <%
		int cnt = Integer.parseInt((String)pageContext.getAttribute("cnt"));
		++cnt;
		pageContext.setAttribute("cnt", cnt);
	%> --%>
</body>
</html>