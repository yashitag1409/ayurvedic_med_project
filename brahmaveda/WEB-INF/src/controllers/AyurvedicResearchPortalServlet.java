package controllers;

import models.*;
import java.io.IOException;

import javax.servlet.annotation.*;
import javax.servlet.*;
import javax.servlet.http.*;
@WebServlet("/arsp.do")
public class AyurvedicResearchPortalServlet extends HttpServlet{
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        HttpSession session = request.getSession();

        Users user = (Users)session.getAttribute("user");

        if(user!=null){
            request.getRequestDispatcher("ayuirvedic_research_portal.jsp").forward(request,response);
        }else{
            response.sendRedirect("signout.do");
        }
    }
    
}
