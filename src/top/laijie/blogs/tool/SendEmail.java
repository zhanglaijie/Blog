package top.laijie.blogs.tool;

import java.io.UnsupportedEncodingException;
import java.util.Date;  
import java.util.Properties;  
  
import javax.mail.Authenticator;  
import javax.mail.Message;  
import javax.mail.MessagingException;  
import javax.mail.PasswordAuthentication;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  
  
  
/** 
 *  
 * @author Qixuan.Chen 
 */  
public class SendEmail {  
      
    public static final String HOST = "smtp.yeah.net";  
    public static final String PROTOCOL = "smtp";     
    public static final int PORT = 25;  
    public static final String FROM = "laijie100@yeah.net";//发件人的email  
    public static final String PWD = "ZHANGlaijie1992";//发件人密码  
      
    /** 
     * 获取Session 
     * @return 
     */  
    private static Session getSession() {  
        Properties props = new Properties();  
        props.put("mail.smtp.host", HOST);//设置服务器地址  
        props.put("mail.store.protocol" , PROTOCOL);//设置协议  
        props.put("mail.smtp.port", PORT);//设置端口  
        props.put("mail.smtp.auth" ,"true");  
          
        Authenticator authenticator = new Authenticator() {  
  
            @Override  
            protected PasswordAuthentication getPasswordAuthentication() {  
                return new PasswordAuthentication(FROM, PWD);  
            }  
              
        };  
        Session session = Session.getDefaultInstance(props , authenticator);  
          
        return session;  
    }  
      
    public static void send(String toEmail,String content,String subject) {  
        Session session = getSession();  
        try {  
            System.out.println("--send--"+content);  
            // Instantiate a message  
            Message msg = new MimeMessage(session);  
            String nick="";  
            try {  
                nick=javax.mail.internet.MimeUtility.encodeText("壹博客");  
            } catch (UnsupportedEncodingException e) {  
                e.printStackTrace();  
            }   
            msg.setFrom(new InternetAddress(nick+" <"+FROM+">"));  
            //Set message attributes  
           // msg.setFrom(new InternetAddress(FROM));  
            InternetAddress[] address = {new InternetAddress(toEmail)};  
            msg.setRecipients(Message.RecipientType.TO, address);  
            msg.setSubject(subject);  
            msg.setSentDate(new Date());  
            msg.setContent(content , "text/html;charset=utf-8");  
   
            //Send the message  
            Transport.send(msg);  
        }  
        catch (MessagingException mex) {  
            mex.printStackTrace();  
        }  
    }  
  
} 