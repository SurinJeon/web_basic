package web_basic.jsp_ch11;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/jsp_ch11/thumbNail")
public class ThumbnailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = request.getServletContext();
		String imagePath=context.getRealPath("jsp_ch11/img");
		
		System.out.println("imagePath > " + imagePath);
		int size = 1*1024*1024 ;
		String filename="";
		
		try{
			MultipartRequest multi=	new MultipartRequest(request,
			  					  imagePath,
								  size,
								  "utf-8",
								new DefaultFileRenamePolicy());
			
			Enumeration<String> files=multi.getFileNames();
			
			String file =(String)files.nextElement();
			filename=multi.getFilesystemName(file);
			System.out.println("filename > " + filename);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		ParameterBlock pb=new ParameterBlock();
		pb.add(imagePath+"/"+filename);
		RenderedOp rOp=JAI.create("fileload",pb);
		
		BufferedImage bi= rOp.getAsBufferedImage();
		BufferedImage thumb=new BufferedImage(100,100,BufferedImage.TYPE_INT_RGB);
		
		Graphics2D g=thumb.createGraphics();
		g.drawImage(bi,0,0,100,100,null);
		
		File file=new File(imagePath+"/sm_"+filename);
		System.out.println("file > " + file);
		ImageIO.write(thumb,"png",file); // png 안 되는 이유 생각해보기
		
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.printf("<img src='img/%s'><br>", filename);
		out.printf("<img src='img/sm_%s'>", filename);
		out.print("</html>");
	}

}
