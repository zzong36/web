<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
	5 + 5 : <%= 5+5 %><br>
	5 + 5 : ${5 + 5 }<br>
	9 % 5 : ${ 9 % 5 }<br>
	9 mod 5 : ${ 9 mod 5 }<br>
	9 > 5: ${9 > 5 }<br>
	9 gt 5: ${9 gt 5 }<br>
	9 == 5: ${9 == 5 }<br>
	9 eq 5: ${9 eq 5 }<br>
	
	(5 == 5) && (7>  5) : ${ (5==5) && (7 >5)} <br>
	(5 eq 5) && (7 gt  5) : ${ (5 eq 5) && (7 gt 5)} <br>
	
	empty str : ${ empty str }<br>
	not empty str : ${ not empty str }<br>
	
	5의 짝/홀 판단 : ${ 5 mod 2 eq 0 ? "짝수" : "홀수"}<br>
	5의 짝/홀 판단 : ${ 5 % 2 == 0 ? "짝수" : "홀수"}<br>
</body>
</html>