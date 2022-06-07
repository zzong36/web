<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.ac.kopo.board.BoardVO"%>

<%
	BoardVO b = new BoardVO();

	b.setNo(1);
	b.setTitle("테스트");

	//pageContext 영역에 객체 등록
	//이름: board 값: 생성된 BoardVO 객체
	pageContext.setAttribute("board", b);
	pageContext.setAttribute("no", 2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el exam04</title>
</head>
<body>
	no: <%= b.getNo() %><br>
	no: <%=((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
	el no: ${ board.no }<br>
	
	title: <%=((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	el title: ${ board.title }<br>
</body>
</html>