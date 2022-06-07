<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page import="java.util.*"%>

<%

/* 	//1. 자바빈즈 클래스 + 콜렉션
	BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	List<BoardVO> boardList = new ArrayList<>();
	boardList.add(board); */
	
	
	/* // 2. 자바빈즈 클래스 + 배열
	BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	BoardVO[] boardList = new BoardVO[]{board};
	 */
	 
	/* // 3. 맵객체 + 배열
	Map<String, String> board = new HashMap<>();
	board.put("title", "성공");
	
	Map[] boardList = {board}; 
	 */
	
	/* // 4. 맵객체 + 컬렉션
	Map<String, String> board = new HashMap<>();
	board.put("title", "성공");
	
	List<Map<String, String>> boardList = new ArrayList<>();
	boardList.add(board); */
	
	
	BoardVO board = new BoardVO();
	Map<String, BoardVO> boardMap = new HashMap<>();
	board.setTitle("성공");
	boardMap.put("title", board);
	
	pageContext.setAttribute("boardMap", boardMap);
//	pageContext.setAttribute("boardList", boardList);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam 08</title>
</head>
<body>
	성공/실패? ${ boardList[0].get("title") }<br>
	<hr>
	성공/실패? ${boardMap.get("title").getTitle()}<br>
</body>
</html>