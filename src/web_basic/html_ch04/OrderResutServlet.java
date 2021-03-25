package web_basic.html_ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/html_ch04/orderResutServlet")
public class OrderResutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		String addr = request.getParameter("addr");
		String tel2 = request.getParameter("tel2");
		String memo = request.getParameter("memo");
		
		Map<String, String[]> order = request.getParameterMap();
		PrintWriter out = response.getWriter();
		
		for(Entry<String, String[]> e : order.entrySet()) {
			out.println(e.getKey() + Arrays.toString(e.getValue()) + "<br>");
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
