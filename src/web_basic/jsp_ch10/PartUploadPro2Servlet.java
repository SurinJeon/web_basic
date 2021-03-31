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

@WebServlet("/jsp_ch10/partUploadPro2")
@MultipartConfig(
		fileSizeThreshold = 0,
		location = "D:\\upload"
		)
public class PartUploadPro2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		PrintWriter out = response.getWriter();
		String writer = request.getParameter("writer");
		String uploadFileNameList = "";
		for(Part part: request.getParts()) {
			if(!part.getName().equals("writer")) {
				String contentDisposition = part.getHeader("content-disposition");
				String uploadFileName = part.getSubmittedFileName();
				part.write(uploadFileName);
				uploadFileNameList += " " + uploadFileName;
			}
		}
		
		out.printf("작성자 %s님이 %s파일을 업로드 하였습니다.", writer, uploadFileNameList);
		
		
	}

}