package com.example.courseapp;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "course")
public class Course {
    @Id
    private int courseId;
    private String courseCode;
    private String courseName;
    private String department;
    private String facultyName;
    private int credits;
    private int semester;
    private int courseCapacity;

    public Course() {}

    public Course(int courseId, String courseCode, String courseName, String department, String facultyName, int credits, int semester, int courseCapacity) {
        this.courseId = courseId;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.department = department;
        this.facultyName = facultyName;
        this.credits = credits;
        this.semester = semester;
        this.courseCapacity = courseCapacity;
    }

    public int getCourseId() { return courseId; }
    public void setCourseId(int courseId) { this.courseId = courseId; }
    public String getCourseCode() { return courseCode; }
    public void setCourseCode(String courseCode) { this.courseCode = courseCode; }
    public String getCourseName() { return courseName; }
    public void setCourseName(String courseName) { this.courseName = courseName; }
    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }
    public String getFacultyName() { return facultyName; }
    public void setFacultyName(String facultyName) { this.facultyName = facultyName; }
    public int getCredits() { return credits; }
    public void setCredits(int credits) { this.credits = credits; }
    public int getSemester() { return semester; }
    public void setSemester(int semester) { this.semester = semester; }
    public int getCourseCapacity() { return courseCapacity; }
    public void setCourseCapacity(int courseCapacity) { this.courseCapacity = courseCapacity; }
}