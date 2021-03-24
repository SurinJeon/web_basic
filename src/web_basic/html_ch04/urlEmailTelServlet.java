package web_basic.html_ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/html_ch04/urlEmailTelServlet")
public class urlEmailTelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset = utf-8");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwdConfirm = request.getParameter("passwdConfirm");
		String name = request.getParameter("userName");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String url = request.getParameter("sns");
		String member = request.getParameter("member");
		String stuff = request.getParameter("stuff");
		String satis = request.getParameter("satis");
		String subject = request.getParameter("subject");
		String[] mailing = request.getParameterValues("mailing");
		String color = request.getParameter("color");
		
		
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		String startstr = request.getParameter("start");
		int startYear = Integer.parseInt(startstr.substring(0, 4));
		int startMonth = Integer.parseInt(startstr.substring(5, 7));
		int startDate = Integer.parseInt(startstr.substring(8, 10));
		Date start = new Date(startYear - 1900, startMonth - 1, startDate);
		
		String startFormat = format.format(start);
		
		String endstr = request.getParameter("end");
		int endYear = Integer.parseInt(endstr.substring(0, 4));
		int endMonth = Integer.parseInt(endstr.substring(5, 7));
		int endDate = Integer.parseInt(endstr.substring(8, 10));
		Date end = new Date(endYear - 1900, endMonth - 1, endDate);
		
		String endFormat = format.format(end);
		
		DateTimeFormatter format2 = DateTimeFormatter.ofPattern("hh:mm:ss");
		
		String startTime1 = request.getParameter("startTime1"); //11:00
		int startHour = Integer.parseInt(startTime1.substring(0, 2));
		int startMinute = Integer.parseInt(startTime1.substring(3, 5));
		LocalTime startTime = LocalTime.of(startHour, startMinute, 00);
		
		
		String endTime1 = request.getParameter("endTime1");
		int endHour = Integer.parseInt(endTime1.substring(0, 2));
		int endMinute = Integer.parseInt(endTime1.substring(3, 5));
		LocalTime endTime = LocalTime.of(endHour, endMinute, 00);
		
		
		switch(subject){
			case "grm":
				subject = "문법";
				break;
			case "wr":
				subject = "작문";
				break;
			case "rd":
				subject = "독해";
				break;
		}
		
		for(int i = 0; i < mailing.length; i++) {
			switch(mailing[i]) {
			case "news":
				 mailing[i] = "해외 단신";
				 break;
			case "dialog":
				 mailing[i] = "5분 회화";
				 break;
			case "pops":
				 mailing[i] = "모닝팝스";
				 break;
			}
			
		}
		
		
		boolean isCorrect;
		
		if(passwd.equals(passwdConfirm)) {
			isCorrect = true;
		} else {
			isCorrect = false;
		}
		
		out.println("<h1>" + "가입정보" + "</h1>" + "<br>");
		out.println("id: " + id + "<br>");
		out.println("password 일치 여부: " + isCorrect + "<br>");
		out.println("name: " + name + "<br>");
		out.println("email: " + email + "<br>");
		out.println("tel: " + tel + "<br>");
		out.println("sns: " + url + "<br>");
		
		out.println("<hr>");
		
		out.println("<h1>" + "등록정보" + "</h1>" + "<br>");
		out.println("member: " + member + "<br>");
		out.println("stuff: " + stuff + "<br>");
		out.println("satis: " + satis + "<br>"); // 안 넘어옴.. 
		
		out.println("<hr>");
		
		out.println("<h1>" + "신청과목" + "</h1>" + "<br>");
		out.println("subject: " + subject + "<br>");
		
		out.println("<hr>");
		
		out.println("<h1>" + "메일링" + "</h1>" + "<br>");
		out.println("mailing: " + Arrays.toString(mailing) + "<br>");
//		System.out.println(Arrays.toString(mailing));
		
		out.println("<hr>");
		
		out.println("<h1>" + "선호색상" + "</h1>" + "<br>");
		out.println("color: " + color + "<br>");
		
		out.println("<hr>");

		out.println("<h1>" + "조회기간" + "</h1>" + "<br>");
		out.println(startFormat + " to " + endFormat);
	
//		out.println(endDay.toString());
		
		out.println("<hr>");
		
		out.println("<h1>" + "대관 시간" + "</h1>" + "<br>");
//		out.println(start + " to " + end);
		out.println(startTime + "<br>");
		out.println(endTime);
		out.println();
		out.println();
		out.println();
		
	}

}











