package web_basic.jsp_ch13.erp;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TitleServlet")
public class TitleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TitleService service;
	
	
    public TitleServlet() {
    	service= new TitleService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		List<Title> list = service.showTitles();
		/*
		 * PrintWriter out = response.getWriter(); out.println("<br>");
		 * 
		 * 
		 * for(Title t : list) {
		 * out.printf("%s - %s <br>", t.gettNo(), t.gettName()); }
		 */		
		
		request.setAttribute("list", list);
		// 담아서 출력 찍어내는건 jsp 페이지에서 할 것
		
		request.getRequestDispatcher("/jsp_ch13/titlelist.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
