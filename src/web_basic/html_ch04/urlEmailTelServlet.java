package web_basic.html_ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/html_ch04/urlEmailTelServlet")
public class urlEmailTelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwdConfirm = request.getParameter("passwdConfirm");
		String name = request.getParameter("userName");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String url = request.getParameter("sns");
		
		
		boolean isCorrect;
		
		if(passwd.equals(passwdConfirm)) {
			isCorrect = true;
		} else {
			isCorrect = false;
		}
		
		out.println("<h1>" + "가입정보" + "</h1>" + "<br>");
		out.println("id: " + id + "<br>");
		out.println("password 일치 여부: " + isCorrect + "<br>");
		out.println("name: " + name + "<br>");
		out.println("email: " + email + "<br>");
		out.println("tel: " + tel + "<br>");
		out.println("sns: " + url + "<br>");
		
		
	}

}
