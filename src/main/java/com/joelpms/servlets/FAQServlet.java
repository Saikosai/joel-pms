package com.joelpms.servlets;

import com.joelpms.helpers.Helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FAQServlet", urlPatterns = "/faq")
public class FAQServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Get questions
        //look into some caching
        ArrayList<String> questions = new ArrayList<String>();
        request.setAttribute("questions", questions);
        request.getRequestDispatcher(Helper.VIEW_PATH + "faq.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Get Post Data

        //Check to see if data is not null

        //Save data

        //Retrieve full list

        //Return question list

        //find way to send notification that question was saved
        request.getRequestDispatcher(Helper.VIEW_PATH + "faq.jsp").forward(request, response);
    }

}
