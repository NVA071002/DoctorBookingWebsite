package org.example.model;

public class Doctor {
    private int id;
    private String name;
    private String faculty;
    private int status;

    public Doctor(int id, String name, String faculty, int status) {
        this.id = id;
        this.name = name;
        this.faculty = faculty;
        this.status = status;
    }

    public Doctor(String name, String faculty, int status) {
        this.name = name;
        this.faculty = faculty;
        this.status = status;
    }


    public Doctor(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Doctor() {
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

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
