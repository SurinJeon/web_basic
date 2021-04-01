package web_basic.jsp_ch13.erp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp_ch13/titleUpdate")
public class TitleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
       
    public TitleUpdateServlet() {
    	service = new TitleService();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		int tNo = Integer.parseInt(request.getParameter("tNo"));
		String tName = request.getParameter("tName");
		
		PrintWriter out = response.getWriter();
		
		Title title = new Title(tNo, tName);
		
		service.modifyTitles(title);
		
		response.sendRedirect("/web_basic/jsp_ch13/titleServlet");
		
	}

}
