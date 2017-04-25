package org.lanqiao.sendemail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Authentication extends Authenticator {
    
	private String username = null;
	private String userpass = null;
	
	public Authentication() {}
	
	public Authentication(String username, String password) {  
		  this.username = username;  
		  this.userpass = password;  
    }  
	
	protected PasswordAuthentication getPasswordAuthentication(){
		  PasswordAuthentication pa = new PasswordAuthentication(username, userpass);
		  return pa;
	}  
	
}
