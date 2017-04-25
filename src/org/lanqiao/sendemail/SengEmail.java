package org.lanqiao.sendemail;

import org.springframework.stereotype.Service;

@Service
public class SengEmail {

	public void sendEmail(String eName,String msg){
		SendMail mail = new SendMail();  
		mail.setMailServerHost("smtp.163.com"); //这里填发送者的邮箱服务器，我以qq举个例子  
		mail.setMailServerPort("25");  
		mail.setValidate(true);  
		mail.setUserName("m18345965280@163.com");  
		mail.setPassword("yu123456");
		mail.setFromAddress("m18345965280@163.com");  
		mail.setToAddress(eName);  
		mail.setSubject("验证码");
		mail.setContent("欢迎注册360账户您的验证码为:"+msg);  
		//发送邮件  
		MailSender sms = new MailSender();  
		sms.sendTextMail(mail);//发送文体格式  
	}
	
}
