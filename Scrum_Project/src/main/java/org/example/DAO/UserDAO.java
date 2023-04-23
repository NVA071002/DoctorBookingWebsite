package org.example.DAO;

import org.example.connection.DBConnection;
import org.example.model.Doctor;
import org.example.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;

public class UserDAO {
    public Connection connection = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    public void insert (User user)
    {
        try
        {
            String sql = "INSERT INTO user (name,phone,gender,address,faculty_selected,symtomp,doctor_selected,email,date) VALUES (?,?,?,?,?,?,?,?,?)";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getPhone());
            ps.setInt(3, user.getGender());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getFaculty_selected());
            ps.setString(6, user.getSymptom());
            ps.setString(7, user.getDoctor_selected());
            ps.setString(8, user.getEmail());
            ps.setString(9, user.getDateTime().toString());
            ps.execute();
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    public void deleteUser(int userId) {
        try {
            String sql = "DELETE FROM user WHERE id = ?";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int getIdUserByEmail(String email){
        User user = new User();
        try
        {
            String sql = "SELECT * FROM user WHERE email = ?";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();

            while(rs.next())
            {
                user.setId(Integer.parseInt(rs.getString("id")));
                user.setName(rs.getString("name"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setDoctor_selected(rs.getString("doctor_selected"));
                user.setFaculty_selected(rs.getString("faculty_selected"));
                user.setSymptom(rs.getString("symtomp"));
                user.setDateTime(rs.getString("date"));
                user.setGender(Integer.parseInt(rs.getString("gender")));
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return user.getId();
    }
    public User loadUserInforbyEmailandPhone(String email, String phone){
        User user = new User();
        try
        {
            String sql = "SELECT * FROM scrum.user where email=? and phone =?";
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, phone);
            rs = ps.executeQuery();

            while(rs.next())
            {
                user.setId(Integer.parseInt(rs.getString("id")));
                user.setName(rs.getString("name"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setDoctor_selected(rs.getString("doctor_selected"));
                user.setFaculty_selected(rs.getString("faculty_selected"));
                user.setSymptom(rs.getString("symtomp"));
                user.setDateTime(rs.getString("date"));
                user.setGender(Integer.parseInt(rs.getString("gender")));
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }

}
