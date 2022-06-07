package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeworkServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		
		String announce = request.getParameter("mail1");
		String ad = request.getParameter("mail2");
		String delivery = request.getParameter("mail3");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("	<title>개인정보 출력</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("	<header>");
		out.println("		<h1>&nbsp;&nbsp;&nbsp;&nbsp;개인정보 출력</h1><br>");
		out.println("	</header>");
		out.println("		이름 : " + name + "<br>");
		out.println("		아이디 : " + id + "<br>");
		out.println("		암호 : " + password + "<br>");
		out.println("		성별 : " + gender + "<br>");
		if(announce == null) {
			out.println("		공지메일 : 받지않음<br>");
		} else {			
			out.println("		공지메일 : " + announce + "<br>");
		}
		
		if(ad == null) {
			out.println("		광고메일 : 받지않음<br>");
		} else {			
			out.println("		광고메일 : " + ad + "<br>");
		}
		
		if(delivery == null) {
			out.println("		배송확인메일 : 받지않음<br>");
		} else {			
			out.println("		배송확인메일 : " + delivery + "<br>");
		}
		out.println("		직업 : " + job + "<br>");
		out.println("	</body>");
		out.println("</html>");
	}
}
