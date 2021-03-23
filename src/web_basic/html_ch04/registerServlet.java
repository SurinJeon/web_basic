package web_basic.html_ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/html_ch04/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, IOException {
		request.setCharacterEncoding("utf-8");

		response.setContentType("text/html; charset = utf-8");

		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		
		String subject = request.getParameter("subject");

		switch (subject) {
		case "eng":
			subject = "영어회화";
			break;
		case "ch":
			subject = "중국어회화";
			break;
		case "jp":
			subject = "일어회화";
			break;
		}

		String[] gubun = request.getParameterValues("gubun");

		for (int i = 0; i < gubun.length; i++) {
			switch (gubun[i]) {
			case "grm":
				gubun[i] = "문법";
				break;
			case "wr":
				gubun[i] = "작문";
				break;
			case "rd":
				gubun[i] = "독해";
				break;
			}
		}

		PrintWriter out = response.getWriter();

		
		out.println("이름: " + name + "<br>");
		out.println("메일주소: " + mail + "<br>");
		out.println("수강분야: " + subject + "<br>");
		out.println("수강과목: " + Arrays.toString(gubun));
	}

}
