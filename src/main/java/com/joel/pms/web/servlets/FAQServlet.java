package com.joel.pms.web.servlets;

import com.joel.pms.domains.question.Question;
import com.joel.pms.helpers.Helper;
import com.joel.pms.persistence.postgres.QuestionDAOImpl;
import com.joel.pms.domains.question.QuestionService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static java.lang.System.out;

@WebServlet(
        name = "FAQServlet",
        urlPatterns = "/faq"
)
public class FAQServlet extends HttpServlet {

    private QuestionService service;

    public FAQServlet(){
        service = new QuestionService(new QuestionDAOImpl());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("questions", service.getAll());
        request.getRequestDispatcher(Helper.VIEW_PATH + "faq.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String submissionStatus;
        String subject = request.getParameter("question-subject");
        String content = request.getParameter("question-content");

        if(subject.equals("") || content.equals("")){
            submissionStatus = "failed";
        }
        else {
            Question question = new Question();
            question.setContent(content);
            question.setSubject(subject);

            service.save(question);
            submissionStatus = "success";
        }
        request.setAttribute("questions", service.getAll());
        request.setAttribute("status", submissionStatus);
        request.getRequestDispatcher(Helper.VIEW_PATH + "faq.jsp").forward(request, response);
    }

}
