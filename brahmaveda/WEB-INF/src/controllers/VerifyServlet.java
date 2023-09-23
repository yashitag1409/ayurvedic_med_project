package controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import models.*;
import utils.EmailSender;
import utils.EmailTemplate;

@WebServlet("/verify.do")
public class VerifyServlet extends HttpServlet {
    public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        HttpSession session = request.getSession();
        Users user = (Users)session.getAttribute("user");

        String otp = request.getParameter("otp");

        // System.out.println("otp from cerify Servlet  : " +otp);
        if(user.getOtp().equals(otp)){
            boolean result = user.saveUser();
            if(result){
                String emailMessage = EmailTemplate.sendThanks(user.getName());
                
                String subject = "Account Registration Completed Successfully";
                
                EmailSender.sendEmail(user.getEmail(), subject ,emailMessage);
        
                response.getWriter().write("Verified Successfully ");
            }
            else{
                response.getWriter().write("Not verified Successfully");
            }
        }else{
            response.getWriter().write("Enter Valid OTP");
        }
    }
}
