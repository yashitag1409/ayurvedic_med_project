package controllers;

import models.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.util.*;
import java.io.*;

@WebServlet("/search_medicines.do")
public class SearchMedicinesServlet extends HttpServlet {
    public void doPost(HttpServletRequest request , HttpServletResponse response) throws IOException ,ServletException{
        HttpSession session = request.getSession();

        Users user = (Users)session.getAttribute("user");

        if(user != null){

            String type = request.getParameter("type");
            String mainIndication = request.getParameter("main_indications");
            String preffered = request.getParameter("preffered");

            Medicines medi = new Medicines(type, mainIndication, preffered);

            ArrayList<Medicines> medicinesList = medi.collectAllMedicines();
            Iterator<Medicines> itr = medicinesList.iterator();
            while(itr.hasNext()){
                Medicines med = itr.next();

                String name = med.getMedicineName();
                // int medId = med.getMedId();

                System.out.println( "name : " + name);
            }
            
            session.setAttribute("medicinesList" , medicinesList);

            request.getRequestDispatcher("medicine_list.jsp").forward(request,response);
        }
        else{
            response.sendRedirect("signout.do");
        }
    }
    
}
