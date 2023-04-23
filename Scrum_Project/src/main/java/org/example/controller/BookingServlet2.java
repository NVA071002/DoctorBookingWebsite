package org.example.controller;

import org.example.DAO.DoctorDAO;
import org.example.model.Doctor;
import org.example.model.Faculty;
import org.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="booking2",urlPatterns = {"/booking2"})
public class BookingServlet2 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String faculty_selected = req.getParameter("faculty_selected");

        DoctorDAO doctorDAO = new DoctorDAO();
        List<Doctor> doctorList = doctorDAO.getDoctorByFaculty(faculty_selected);

        String symptom = req.getParameter("symptom");

        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        int gender = Integer.parseInt(req.getParameter("gender"));
        String email = req.getParameter("email");

        User user = new User(name, phone, gender, address, email);

        if (user != null){
            user.setFaculty_selected(faculty_selected);
            user.setSymptom(symptom);
        }
        req.setAttribute("user", user);
        req.setAttribute("doctorList", doctorList);

        getServletContext()
                .getRequestDispatcher("/formdoctor.jsp")
                .forward(req, resp);


        }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
