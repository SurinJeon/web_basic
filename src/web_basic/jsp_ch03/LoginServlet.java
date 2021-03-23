package web_basic.jsp_ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp_ch03/login") // 하위 패키지로 만들어서 이 작업 해줌
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 요청한 정보 한 번 찍어보기*/
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		System.out.println("id : " + id + "passwd : " + passwd);
		
		/*이제 브라우저로 응답해주기*/
		// 근데 그냥 이렇게 한글 찍으면 한글 깨짐... >> setContentType을 지정해줘야함
		response.setContentType("text/html; charset = utf-8"); // text는 html로 되어있고 charset은 utf-8로 하라
		
		PrintWriter out = response.getWriter();
		out.printf("아이디 : %s <br> 비밀번호 : %s", id, passwd);
		
	}

}
