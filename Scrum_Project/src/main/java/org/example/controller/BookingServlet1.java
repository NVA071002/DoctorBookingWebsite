package org.example.controller;


import org.example.DAO.DoctorDAO;
import org.example.DAO.UserDAO;
import org.example.model.Faculty;
import org.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "booking1", urlPatterns = {"/booking1"})
public class BookingServlet1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DoctorDAO doctorDAO = new DoctorDAO();
        List<Faculty> facultyList = doctorDAO.getAllFaculty();
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        int gender = Integer.parseInt(req.getParameter("gender"));
        String city = req.getParameter("city");
        String district = req.getParameter("district");
        String ward = req.getParameter("ward");
        String street = req.getParameter("street");

        String address = street +" "+ward+" "+district+" "+city;
        String email = req.getParameter("email");

        //store data
        User user = new User(name, phone, gender, address, email);

        req.setAttribute("user", user);
        req.setAttribute("address", user.getAddress());
        req.setAttribute("facultyList", facultyList);
        getServletContext()
                .getRequestDispatcher("/formfaculty.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
