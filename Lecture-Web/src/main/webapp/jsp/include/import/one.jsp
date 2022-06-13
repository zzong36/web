<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 공통의 코드만 넣는다 -->
<hr>
request 공유영역 phone : ${ phone }
<br>
넘어온 파라미터 정보 name : ${ param.name }
<h2>인클루드 된 내용</h2>
<h2>인클루드 된 내용</h2>
<h2>인클루드 된 내용</h2>
<h2>인클루드 된 내용</h2>
<h2>인클루드 된 내용</h2>
<hr>
<c:set var="phone" value="010-8888-9999" scope="request" />