package web_basic.jsp_ch13.erp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp_ch13/titleDelete")
public class TitleDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
	
	public TitleDeleteServlet() {
		service = new TitleService();
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		int tNo = Integer.parseInt(request.getParameter("tNo"));
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<br>");
		
		Title title = new Title(tNo);
		service.deleteTitles(title);
		
		
		response.sendRedirect("/web_basic/jsp_ch13/titleServlet");
	}

}
