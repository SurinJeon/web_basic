package web_basic.jsp_ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jsp_ch03/boardList") // url mapping
//"" 이 안에 들어간 것부터 인식함 여기서 루트는 project 명이며, 루트는 /web_basic까지만 읽어오기 때문에 생략가능 (같은 자바 부분이기 때문에 그게 가능함)
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 깨지지 않도록 어떠한 문장도 출력 전에 아래 문장을 찍어주기
		response.setContentType("text/html; charset = utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath() + "<br>");
		
		// 전달은 모두 문자열로 전달됨
		// 요청한 파라미터를 이 파일에서 변수로 지정해주기
		String page = request.getParameter("page");
		
		// 이제 응답해주기
		PrintWriter out = response.getWriter();
		out.println("page : " + page + "페이지 게시판 목록 출력");
	}

}
