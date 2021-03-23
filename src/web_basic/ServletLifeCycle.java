package web_basic;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author surin
 * 콘솔창에 Servlet LifeCycle 찍어보면서 확인해보기 (p69)
 */
@WebServlet("/ServletLifeCycle")
public class ServletLifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletLifeCycle() {
        System.out.println("Constructor()");
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()");
	}

	public void destroy() {
		System.out.println("destory()"); // 창 끌때 destory()
	}

	
	/* service가 있으면 get이랑 post가 안 떠서 일단 주석처리 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service()" + request.getMethod()); // 클라이언트가 어떤 방식으로 호출을 했는지 보기 위해 뒤에 추가함
		if (request.getMethod().equals("GET")) { // 호출 방식이 get이라면 doGet(), 아니라면 doPost()해라
			doGet(request, response);
		} else {
			doPost(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()"); // doGet이 호출되면서 화면에 보이는 것임
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
	}

}
