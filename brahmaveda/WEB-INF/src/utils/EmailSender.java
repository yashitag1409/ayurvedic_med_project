package utils;

import java.util.Properties;

import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.MessagingException;
import javax.mail.Message;
import javax.mail.Transport;

import javax.mail.internet.MimeMessage;

public class EmailSender {
    static Properties props = new Properties();

    public static void setProperties(String host , String port){
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
    }

    public static void sendEmail(String to_email,String subject , String message){
        Session mailSession = Session.getInstance(props,new MailAuthenticator());
        MimeMessage mimeMessage = new MimeMessage(mailSession);

        try{
            mimeMessage.setFrom("namanstore@outlook.com");
            mimeMessage.setRecipients(Message.RecipientType.TO,to_email);
            mimeMessage.setSubject(subject);
            mimeMessage.setContent(message,"text/html");
            
            Transport.send(mimeMessage);
        }catch(MessagingException me){
            me.printStackTrace();
        }        
    }
}

class MailAuthenticator extends Authenticator {
    public PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication("namanstore@outlook.com", "Naman@1409");
    }
}