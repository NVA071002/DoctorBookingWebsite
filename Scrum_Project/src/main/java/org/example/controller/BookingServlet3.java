package org.example.controller;

import org.example.DAO.DoctorDAO;
import org.example.DAO.UserDAO;
import org.example.model.Doctor;
import org.example.model.User;

import javax.print.Doc;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="booking3",urlPatterns = {"/booking3"})
public class BookingServlet3 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        int gender = Integer.parseInt(req.getParameter("gender"));
        String email = req.getParameter("email");
        String faculty_selected = req.getParameter("faculty_selected");
        String symptom = req.getParameter("symptom");
        String doctor = req.getParameter("doctor_selected");
        String date = req.getParameter("dateTime");

        User user = new User(name,phone,gender,address,faculty_selected,symptom,doctor,email,date);

        if (user != null){
            user.setDoctor_selected(doctor);
            user.setDateTime(date);
        }

        UserDAO dao = new UserDAO();
        dao.insert(user);

        Doctor doc;
        DoctorDAO doctorDAO = new DoctorDAO();
        int id = doctorDAO.getIdDoctorByName(doctor);

//        if(doc != null){
//            doc.setStatus(1);
//            doctorDAO.update(doc);
//            System.out.println(doc.getStatus());
//        }
//        else{
//            System.out.println("Doctor null");
//        }

        Doctor doctor1 = new Doctor(id, doctor, faculty_selected, 1);
        try {
            doctorDAO.updateDoctor(doctor1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("user", user);

        getServletContext()
                .getRequestDispatcher("/forminfo.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
