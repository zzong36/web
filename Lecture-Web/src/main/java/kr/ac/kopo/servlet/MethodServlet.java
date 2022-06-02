package kr.ac.kopo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {

	// http://localhost:9999/Lecture-Web/method?id=hong
	// ?를 통해 넘긴 애들을 parameter라고 함
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 요청방식이 get인지 post인지 알고 싶다면 getMethod() 사용
		String method = request.getMethod();

		// 요청 uri를 뽑아내고 싶을 경우
		String uri = request.getRequestURI();

		// URL을 뽑아내고 싶다면
		StringBuffer url = request.getRequestURL();

		// id를 추출하고 싶다면 getParameter 사용 무조건 return 타입은 string 그러므로 아래처럼 하면 id를 받을 수 있음
		String id = request.getParameter("id");

		/** 
		System.out.println("요청 Method: " + method);
		System.out.println("요청 URI: " + uri);
		System.out.println("요청 URL: " + url);
		System.out.println("id: " + id);
		 */
		
//		이제 서버 -> 클라이언트로 html을 넘길 예정 response 객체를 사용할 예정: 통로가 만들어 져야 함 I/O통로가 필요함
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("	<title>메소드 요청방식</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("		=====================================================<br>");
		out.println("		&nbsp;&nbsp;&nbsp;&nbsp;출력결과<br>");
		out.println("		=====================================================<br>");
		out.println("		파라미터(id) : " + id + "<br>");
		out.println("		요청방식 : " + method + "<br>");
		out.println("		uri : " + uri + "<br>");
		out.println("		url : " + url + "<br>");
		out.println("		=====================================================<br>");
		out.println("	</body>");
		out.println("</html>");
		
		
	}
	
//	post 방식
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// post 방식일 때는 꼭 써줘야 한다. 
		request.setCharacterEncoding("utf-8");
		
		// 요청방식이 get인지 post인지 알고 싶다면 getMethod() 사용
		String method = request.getMethod();

		// 요청 uri를 뽑아내고 싶을 경우
		String uri = request.getRequestURI();

		// URL을 뽑아내고 싶다면
		StringBuffer url = request.getRequestURL();

		// id를 추출하고 싶다면 getParameter 사용 무조건 return 타입은 string 그러므로 아래처럼 하면 id를 받을 수 있음
		String id = request.getParameter("id");

		/** 
		System.out.println("요청 Method: " + method);
		System.out.println("요청 URI: " + uri);
		System.out.println("요청 URL: " + url);
		System.out.println("id: " + id);
		 */
		
//		이제 서버 -> 클라이언트로 html을 넘길 예정 response 객체를 사용할 예정: 통로가 만들어 져야 함 I/O통로가 필요함
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head>");
		out.println("	<title>메소드 요청방식</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("		=====================================================<br>");
		out.println("		&nbsp;&nbsp;&nbsp;&nbsp;출력결과<br>");
		out.println("		=====================================================<br>");
		out.println("		파라미터(id) : " + id + "<br>");
		out.println("		요청방식 : " + method + "<br>");
		out.println("		uri : " + uri + "<br>");
		out.println("		url : " + url + "<br>");
		out.println("		=====================================================<br>");
		out.println("	</body>");
		out.println("</html>");
		
		
	}

}
