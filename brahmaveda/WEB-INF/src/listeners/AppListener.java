package listeners;


import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import utils.EmailSender;

public class AppListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent e) {
        ServletContext context = e.getServletContext();        

        String smtpHost = context.getInitParameter("smtp_host");
        String smtpPort = context.getInitParameter("smtp_port");
        
        EmailSender.setProperties(smtpHost, smtpPort);        
    }

    public void contextDestroyed(ServletContextEvent e) {

    }
}
