package controllers;

import java.util.*;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import models.Users;

import javax.servlet.annotation.WebServlet;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response ) throws IOException , ServletException{
        HttpSession session = request.getSession();

        // session.setAttribute
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }

    public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        HttpSession session = request.getSession();
        // Users user = (Users)session.getAttribute("user");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Users user = new Users(email,password);

        boolean result = user.loginUser();
        
        // System.out.println(result);

        if(result){
            session.setAttribute("user", user);
            request.getRequestDispatcher("ayuirvedic_research_portal.jsp").forward(request,response);

            
        }else{
            request.getRequestDispatcher("index.jsp").forward(request,response);

        }
        
    }
    
}
