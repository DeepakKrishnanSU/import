<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 520px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"], input[type="email"], input[type="date"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #1d4ed8; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Employee" : "Register New Employee"}</h2>
    <form action="/saveEmployee" method="post">
        <label>Employee ID:</label>
        <input type="number" name="employeeId" value="${employee.employeeId}" ${isEdit ? "readonly" : "required"}>

        <label>Full Name:</label>
        <input type="text" name="name" value="${employee.name}" required>

        <label>Age:</label>
        <input type="number" name="age" value="${employee.age}">

        <label>Gender:</label>
        <input type="text" name="gender" value="${employee.gender}">

        <label>Contact Number:</label>
        <input type="text" name="contactNumber" value="${employee.contactNumber}">

        <label>Email:</label>
        <input type="email" name="email" value="${employee.email}">

        <label>Address:</label>
        <input type="text" name="address" value="${employee.address}">

        <label>Department:</label>
        <input type="text" name="department" value="${employee.department}">

        <label>Designation:</label>
        <input type="text" name="designation" value="${employee.designation}">

        <label>Date of Joining:</label>
        <input type="date" name="dateOfJoining" value="${employee.dateOfJoining}">

        <label>Salary (₹):</label>
        <input type="number" step="0.01" name="salary" value="${employee.salary}" required>

        <input type="submit" value="${isEdit ? "Update Employee" : "Save Employee"}">
    </form>
    <a class="nav-link" href="/employees">View All Employees</a>
</div>
</body>
</html>