<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표현식</title>
</head>
<body>
<!-- http://localhost:9999/jsp/el/exam02.jsp?id=aaa&name=bbb 요청을 했다는 가정하에....
 -->
 
 <%
 String id = request.getParameter("id");
 String name = request.getParameter("name");
 %>
 
 id: <%=id %><br>
 id: <%=request.getParameter("id") %><br>
 el id: ${ param.id }<br>
 
 name: <%=name %><br>
 name: <%=request.getParameter("name") %><br>
 el name: ${ param.name }<br>
 
 <!-- http://localhost:9999/jsp/el/exam02.jsp?id=aaa&name=bbb&hobby=movie&hobby=reading -->
 
 <%-- hobby[0] : <% hobby[0] %><br> --%>
 el hobby[0] : ${ paramValues.hobby[0] }<br>

</body>
</html>