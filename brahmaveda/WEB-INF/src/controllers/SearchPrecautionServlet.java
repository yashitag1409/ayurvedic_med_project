package controllers;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.google.gson.Gson;

import models.*;
import utils.*;
import java.io.*;
import java.util.*;

@WebServlet("/search_precaution.do")
public class SearchPrecautionServlet extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException , ServletException{
        HttpSession session = request.getSession();

        Users user = (Users)session.getAttribute("user");

        if(user != null){
            // ArrayList<String> precautions = (ArrayList<String>)getServletContext().getAttribute("diffPrecautions");
            Medicines med = new Medicines();

            ArrayList<String> precautions = med.searchPrecautions();

             Gson gson = new Gson();
            String resp = gson.toJson(precautions);
            response.getWriter().write(resp);          
        }else{
            response.sendRedirect("signout.do");
        }
    }
}
