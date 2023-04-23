package org.example.controller;

import org.example.DAO.UserDAO;
import org.example.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loadbooking", value = "/loadbooking")
public class loadbooking extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        UserDAO userDAO = new UserDAO();
        User user = userDAO.loadUserInforbyEmailandPhone(email,phone);
        request.setAttribute("user",user);
        if(user.getName() == null){
            user = null;
        }
        getServletContext()
                .getRequestDispatcher("/forminfo.jsp")
                .forward(request, response);
    }
}
