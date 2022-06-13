<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 결과화면이라는 글자가 나오지 않는 이유? 새롭게 이동시키면서 기존에 입력된 out객체는 초기화되기 때문 서로 다른 파일을 보여줌(동적으로 다른 화면을 보여줌) -->
	<h2>결과화면</h2>
	<c:if test="${ param.id == 'admin' }">
		<jsp:forward page="admin.jsp" />
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
		<jsp:forward page="user.jsp" />
	</c:if>

</body>
</html>