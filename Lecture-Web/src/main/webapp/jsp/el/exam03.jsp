<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/* 
	객체등록 : 공유영역.setAttribute("이름", "값");
	JSP 공유영역 4가지: pageContext, request, session, application
*/

	pageContext.setAttribute("msg", "pageContext 영역에 등록완료");
	request.setAttribute("msg", "request 영역에 등록완료");
	
	// 뽑아내는 애가 String이 아니므로 따로 등록해야 한다.
	pageContext.setAttribute("length", "request 영역에 등록완료".length());
	
	// id라는 이름으로 홍길동이라는 이름을 가진 객체 등록

	pageContext.setAttribute("id", "홍길동");
	request.setAttribute("id", "김길동");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL exam03</title>
</head>
<body>
	<%--
	EL 공유영역 4가지: pageScope, requestScope, sessionScope, applicationScope
 --%>
	empty msg : ${ empty msg }<br>
	msg : <%= pageContext.getAttribute("msg") %><br>
	<!-- pageContext부터 찾기 때문에 생략해도 무방 -->
	el pageContext msg : ${msg }<br>
	el request msg : ${ requestScope.msg }<br>
	el id : ${ id }<br>
	el id : ${ requestScope.id }<br>
	
	request msg length : ${ length }<br>
	
	<br>
</body>
</html>