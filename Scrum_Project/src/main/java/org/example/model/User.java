package org.example.model;

import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.util.Date;

public class User {
    private int id;
    private String name;
    private String phone;
    private int gender;
    private String address;
    private String faculty_selected;
    private String symptom;
    private String doctor_selected;
    private String email;
    private String date;

    public User(int id, String name, String phone, int gender, String address, String faculty_selected, String symptom, String doctor_selected, String email, String date) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
        this.faculty_selected = faculty_selected;
        this.symptom = symptom;
        this.doctor_selected = doctor_selected;
        this.email = email;
        this.date=date;
    }

    public User(String name, String phone, int gender, String address, String faculty_selected, String symptom, String doctor_selected, String email,String date) {
        this.name = name;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
        this.faculty_selected = faculty_selected;
        this.symptom = symptom;
        this.doctor_selected = doctor_selected;
        this.email = email;
        this.date=date;
    }

    public User(String name, String phone, int gender, String address, String email) {
        this.name = name;
        this.phone = phone;
        this.gender = gender;
        this.address = address;
        this.email = email;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFaculty_selected() {
        return faculty_selected;
    }

    public void setFaculty_selected(String faculty_selected) {
        this.faculty_selected = faculty_selected;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getDoctor_selected() {
        return doctor_selected;
    }

    public void setDoctor_selected(String doctor_selected) {
        this.doctor_selected = doctor_selected;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateTime() {
        return date;
    }

    public void setDateTime(String date) {
        this.date = date;
    }

}
