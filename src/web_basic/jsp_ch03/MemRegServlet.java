package web_basic.jsp_ch03;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/jsp_ch03/memReg")
public class MemRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
		
	}


	private void process(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, IOException {
		request.setCharacterEncoding("utf-8"); // 이미 바디에서 유니코드 아닌 다른걸로 인코딩되어서 넘어오기때문에 요청부분을 인코딩으로 다시 풀어줘야함
		response.setContentType("text/html; charset = utf-8");
		
		if (request.getMethod().equalsIgnoreCase("GET")) {
			PrintWriter out = response.getWriter();
			String name = request.getParameter("name");
			out.println("이름 = " + name + "<br>");
		} else {
			PrintWriter out = response.getWriter();
			String name = request.getParameter("name");
			String addr = request.getParameter("addr");
			String tel = request.getParameter("tel");
			String hobby = request.getParameter("hobby");
			
			out.println("이름 = " + name + "<br>");
			out.println("주소 = " + addr + "<br>");
			out.println("전화번호 = " + tel + "<br>");
			out.println("취미 = " + hobby + "<br>");
		}
		
	}

}
