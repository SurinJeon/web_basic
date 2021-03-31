package web_basic.jsp_ch12;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class GoogleAuthentication extends Authenticator{

	PasswordAuthentication passAuth;
	
	public GoogleAuthentication() {
		passAuth = new PasswordAuthentication("dodorin0901", "imvonmbhuxmjhhwy");
		
	}
	
	public PasswordAuthentication getPasswordAuthentication() {
		return passAuth;
	}
	
}
