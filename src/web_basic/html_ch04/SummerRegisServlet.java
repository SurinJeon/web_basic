package web_basic.html_ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/html_ch04/summerRegisServlet")
public class SummerRegisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset = utf-8");
		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		String stdNo = request.getParameter("stdNo");
		String major = request.getParameter("major");
		String book = request.getParameter("book");
		String worksheet = request.getParameter("worksheet");
		String groupOrder = request.getParameter("groupOrder");
		String extraSubject = request.getParameter("extraSubj");
		String memo = request.getParameter("memo").replaceAll("\r\n", "<br>");
		String color = request.getParameter("color");
		
		PrintWriter out = response.getWriter();
		out.println("<h1>" + "등록정보" + "</h1>");
		out.println("<h3>" + subject + "</h3>");
		out.println("이름:  " + name + "<br>");
		out.println("학번:  " + stdNo + "<br>");
		out.println("전공:  " + major + "<br>");
		out.println("교재 수량:  " + book + "<br>");
		out.println("워크시트 수량:  " + worksheet + "<br>");
		out.println("단체주문:  " + groupOrder + "<br>");
		out.println("추가 수강과목: " + extraSubject + "<br>");
		out.println("티셔츠 색상: " + color + "<br>");
		out.println("추가사항: " + "<br>" + memo);

	}
	


}
