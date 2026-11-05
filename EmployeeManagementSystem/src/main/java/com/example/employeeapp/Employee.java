package com.example.employeeapp;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "employee")
public class Employee {
    @Id
    private int employeeId;
    private String name;
    private int age;
    private String gender;
    private String contactNumber;
    private String email;
    private String address;
    private String department;
    private String designation;
    private String dateOfJoining;
    private double salary;

    public Employee() {}

    public Employee(int employeeId, String name, int age, String gender, String contactNumber, String email, String address, String department, String designation, String dateOfJoining, double salary) {
        this.employeeId = employeeId;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.contactNumber = contactNumber;
        this.email = email;
        this.address = address;
        this.department = department;
        this.designation = designation;
        this.dateOfJoining = dateOfJoining;
        this.salary = salary;
    }

    public int getEmployeeId() { return employeeId; }
    public void setEmployeeId(int employeeId) { this.employeeId = employeeId; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }
    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }
    public String getContactNumber() { return contactNumber; }
    public void setContactNumber(String contactNumber) { this.contactNumber = contactNumber; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }
    public String getDesignation() { return designation; }
    public void setDesignation(String designation) { this.designation = designation; }
    public String getDateOfJoining() { return dateOfJoining; }
    public void setDateOfJoining(String dateOfJoining) { this.dateOfJoining = dateOfJoining; }
    public double getSalary() { return salary; }
    public void setSalary(double salary) { this.salary = salary; }
}