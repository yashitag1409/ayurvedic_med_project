package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.*;
import utils.*;

@WebServlet("/signup.do")
public class SignupServlet extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response ) throws IOException , ServletException{
        HttpSession session = request.getSession();

        // session.setAttribute
        request.getRequestDispatcher("signup.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request , HttpServletResponse response ) throws IOException , ServletException{
        HttpSession session = request.getSession();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String contact = request.getParameter("contact");
        String registrationId = request.getParameter("registrationId");
        String instituteName = request.getParameter("instituteName");

        String otp = Utility.generateOTP();
        System.out.println("otp : " + otp);

        Users user  = new Users(name , email , password, contact , registrationId ,instituteName , otp);
        session.setAttribute("user", user);

        String emailMessage = EmailTemplate.getSignupSuccessCode(name,otp);
        
        String subject = "Account Verification code";
        EmailSender.sendEmail(email, subject ,emailMessage);

        request.getRequestDispatcher("verify.jsp").forward(request,response);

    }

}
