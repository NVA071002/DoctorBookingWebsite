package org.example.DAO;

import org.example.connection.DBConnection;
import org.example.model.Doctor;
import org.example.model.Faculty;
import org.example.model.User;

import javax.print.Doc;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {
    public Connection connection = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    public void updateDoctor(Doctor doctor) throws SQLException {
        String sql = "UPDATE doctor SET name = ?, faculty = ?, status = ?";
        sql += " WHERE id = ?";
        try {
            connection = new DBConnection().getConnection();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        ps = connection.prepareStatement(sql);

        ps.setString(1, doctor.getName());
        ps.setString(2, doctor.getFaculty());
        ps.setInt(3, doctor.getStatus());
        ps.setInt(4, doctor.getId());

        ps.executeUpdate();
    }
    public List<Faculty> getAllFaculty ()
    {
        List<Faculty> lst_Fac = new ArrayList<>();
        try
        {
            String sql = "SELECT distinct faculty FROM doctor ";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();

            while(rs.next())
            {
                lst_Fac.add(new Faculty(rs.getString("faculty")));
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return lst_Fac;
    }
    public List<Doctor> getDoctorByFaculty(String faculty){
        List<Doctor> lst_Doc = new ArrayList<>();
        try
        {
            String sql = "SELECT name FROM doctor WHERE faculty = ? AND status = 0";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, faculty);
            rs = ps.executeQuery();

            while(rs.next())
            {
                Doctor doctor = new Doctor();
                doctor.setName(rs.getString("name"));
                lst_Doc.add(doctor);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return lst_Doc;
    }
    public int getIdDoctorByName(String name){
        Doctor doctor = new Doctor();
        try
        {
            String sql = "SELECT * FROM doctor WHERE name = ?";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            rs = ps.executeQuery();

            while(rs.next())
            {
                doctor.setId(Integer.parseInt(rs.getString("id")));
                doctor.setName(rs.getString("name"));
                doctor.setFaculty(rs.getString("faculty"));
                doctor.setStatus(Integer.parseInt(rs.getString("status")));

            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return doctor.getId();
    }
}
