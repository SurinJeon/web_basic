package web_basic.jsp_ch03;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/jsp_ch03/RedirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("req", "requestValue"); // dispatcher와 다르게, request가 그대로 넘어가지 않음...(다른 객체이기 때문)
		// 그래서 request에 저장하면 그 객체가 넘어가지 않으니, session으로 저장해야함
		
		HttpSession session = request.getSession();
		session.setAttribute("reqSess", "sessionValue");
		response.sendRedirect("redirect.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
