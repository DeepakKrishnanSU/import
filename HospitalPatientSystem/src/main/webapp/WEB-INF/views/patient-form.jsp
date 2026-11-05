<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Patient Registration</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 500px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"], input[type="email"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #1d4ed8; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
        .nav-link:hover { color: #2563eb; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Patient Record" : "Hospital Patient Registration"}</h2>
    <form action="/savePatient" method="post">
        <label>Patient ID:</label>
        <input type="number" name="patientId" value="${patient.patientId}" ${isEdit ? "readonly" : "required"}>

        <label>Patient Name:</label>
        <input type="text" name="name" value="${patient.name}" required>

        <label>Age:</label>
        <input type="number" name="age" value="${patient.age}" required>

        <label>Gender:</label>
        <input type="text" name="gender" value="${patient.gender}">

        <label>Contact Number:</label>
        <input type="text" name="contactNumber" value="${patient.contactNumber}">

        <label>Email Address:</label>
        <input type="email" name="email" value="${patient.email}">

        <label>Residential Address:</label>
        <input type="text" name="address" value="${patient.address}">

        <label>Blood Group:</label>
        <input type="text" name="bloodGroup" value="${patient.bloodGroup}">

        <input type="submit" value="${isEdit ? "Update Patient" : "Register Patient"}">
    </form>
    <a class="nav-link" href="/patients">View All Patients</a>
</div>
</body>
</html>