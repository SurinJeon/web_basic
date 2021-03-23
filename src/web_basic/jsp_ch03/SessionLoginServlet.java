package web_basic.jsp_ch03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/jsp_ch03/sessionLogin")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();
		
		// doGet해서 url창 위에 넘어오는 parameter의 name과 같아야됨!
		String id = request.getParameter("id");
 		String passwd = request.getParameter("passwd");
		
 		
 		// p180
 		Enumeration<String> en = request.getParameterNames();
 		while(en.hasMoreElements()) {
 			String e = en.nextElement();
 			System.out.println(e);
 		} // 이렇게 해서 login.jsp를 실행시키면 콘솔창에 id passwd가 찍힘
 		
 		Map<String, String[]> entry = request.getParameterMap();
 		for (Entry<String, String[]> e : entry.entrySet()) {
 			System.out.printf("%s - %s%n", e.getKey(), Arrays.toString(e.getValue()));
 		}
 		
 		// 위의 두개를 합쳐서 쓰면 더 나을 수 있음 >> 위의 값으로 키를 얻고, 밑에서 value를 얻으면 됨
 		
 		
 		// id, passwd값이 각각 java와 일치한다면 >> 로그인 성공!
 		if(id.equals("java") && passwd.equals("java")) { 
 			// 로그인 성공했으니 session넘기기
 			HttpSession session = request.getSession();
 			session.setAttribute("id", id);
 			
 			// 클라이언트의 주소를 변경(forwarding) <<로그인 성공했으니 환영합니다~ 창 뜨도록! (login.jsp >> menu.jsp로 넘어가게)
 			RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp");
 			dispatcher.forward(request, response);
 		} else {
 			out.println("<script>");
 			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')"); // "" 제대로 인식하도록, 안쪽은 ''로 넣음
 			out.println("history.back()"); // 다시 바로 뒤로 이동해라 (login.jsp로 다시 넘어감)
 			out.println("</script>");
 		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
