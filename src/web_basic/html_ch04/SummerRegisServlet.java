package web_basic.html_ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

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
		
		String name = request.getParameter("name");
		String stdNo = request.getParameter("stdNo");
		String major = request.getParameter("major");
		String book = request.getParameter("book");
		String worksheet = request.getParameter("worksheet");
		String groupOrder = request.getParameter("groupOrder");
		
		if (major.equals("1")) {
			major = "컴퓨터공학과";
		} 
		
		if (major.equals("2")) {
			major = "경영학과";
		} 
		if (major.equals("3")) {
			major = "약학과";
		} 
		
		PrintWriter out = response.getWriter();
		
		out.println("<h1>" + "등록정보" + "</h1>" + "<br>");
		out.println("이름:  " + name + "<br>");
		out.println("학번:  " + stdNo + "<br>");
		out.println("전공:  " + major + "<br>");
		out.println("교재 수량:  " + book + "<br>");
		out.println("워크시트 수량:  " + worksheet + "<br>");
		out.println("단체주문:  " + groupOrder + "<br>");
	}


}
