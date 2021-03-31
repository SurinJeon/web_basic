package web_basic.jsp_ch10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/jsp_ch10/partUploadPro1")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "D:\\upload"
		)
public class PartUploadPro1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		
		String writer = request.getParameter("writer");
		Part part = request.getPart("partFile1"); // 파일 첨부한걸 가져오는 부분
		
		PrintWriter out = response.getWriter();
		String contentDisposition = part.getHeader("content-disposition");
		System.out.println("contentDisposition > " + contentDisposition); // 확인용 출력찍기
		String uploadFileName = part.getSubmittedFileName(); // 책처럼 method 빼지 말고 api쓰기
		
		part.write(uploadFileName); // location = "D:\\upload" 여기에 파일을 저장하는 부분
		out.printf("작성자 %s님이 %s파일을 업로드 하였습니다.%n", writer, uploadFileName);
		
	}

}




























