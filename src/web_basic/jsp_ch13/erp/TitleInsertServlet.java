package web_basic.jsp_ch13.erp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp_ch13/titleInsert")
public class TitleInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
	
    public TitleInsertServlet() {
    	service = new TitleService();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");

		int tNo = Integer.parseInt(request.getParameter("tNo"));
		String tName = request.getParameter("tName");
		
		PrintWriter out = response.getWriter();
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		out.println("<br>");
		
		service.addTitles(new Title(tNo, tName));
		
		// list 다시 담아서 보내거나 혹은 redirect
		/*
		 * List<Title> list = service.showTitles(); request.setAttribute("list", list);
		 * 
		 * request.getRequestDispatcher("/jsp_ch13/titlelist.jsp").forward(request,
		 * response);
		 */
		
		response.sendRedirect("/web_basic/TitleServlet");
		
	}

}
