package org.example.controller;

import org.example.DAO.DoctorDAO;
import org.example.DAO.UserDAO;
import org.example.model.Doctor;
import org.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="delete",urlPatterns = {"/delete"})
public class CancelAppointmentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String faculty_selected = req.getParameter("faculty_selected");
        String doctor = req.getParameter("doctor_selected");

        UserDAO userDAO = new UserDAO();
        DoctorDAO doctorDAO = new DoctorDAO();
        int idUser = userDAO.getIdUserByEmail(email);
        int idDoctor = doctorDAO.getIdDoctorByName(doctor);

        System.out.println("idUser=" +idUser);
        System.out.println("idDoctor=" +idDoctor);

        Doctor doctor1 = new Doctor(idDoctor, doctor, faculty_selected, 0);
        try {
            doctorDAO.updateDoctor(doctor1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

//        User user = new User(id, name,phone,gender,address,faculty_selected,symptom,doctor,email,date);

        userDAO.deleteUser(idUser);

        getServletContext()
                .getRequestDispatcher("/booking1.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
