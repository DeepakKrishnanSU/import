<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Blood Donor Registration</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 520px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #b91c1c; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"], input[type="email"], input[type="date"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #dc2626; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #b91c1c; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Donor Information" : "Register Blood Donor"}</h2>
    <form action="/saveDonor" method="post">
        <label>Donor ID:</label>
        <input type="number" name="donorId" value="${donor.donorId}" ${isEdit ? "readonly" : "required"}>

        <label>Full Name:</label>
        <input type="text" name="name" value="${donor.name}" required>

        <label>Age (18 to 65):</label>
        <input type="number" name="age" value="${donor.age}" required min="18" max="65">

        <label>Gender:</label>
        <input type="text" name="gender" value="${donor.gender}">

        <label>Blood Group:</label>
        <input type="text" name="bloodGroup" value="${donor.bloodGroup}" required placeholder="e.g. O+, A+, B-, AB+">

        <label>Contact Number:</label>
        <input type="text" name="contactNumber" value="${donor.contactNumber}">

        <label>Email Address:</label>
        <input type="email" name="email" value="${donor.email}">

        <label>Address:</label>
        <input type="text" name="address" value="${donor.address}">

        <label>Last Donation Date:</label>
        <input type="date" name="lastDonationDate" value="${donor.lastDonationDate}">

        <label>Health Status:</label>
        <input type="text" name="healthStatus" value="${donor.healthStatus}" placeholder="Fit / Eligible">

        <input type="submit" value="${isEdit ? "Update Donor" : "Register Donor"}">
    </form>
    <a class="nav-link" href="/donors">View Registered Donors</a>
</div>
</body>
</html>