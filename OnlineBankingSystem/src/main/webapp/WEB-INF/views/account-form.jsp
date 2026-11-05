<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Bank Account Registration</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 520px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"], input[type="email"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        select { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #1d4ed8; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Account Details" : "Open New Bank Account"}</h2>
    <form action="/saveAccount" method="post">
        <label>Account ID:</label>
        <input type="number" name="accountId" value="${account.accountId}" ${isEdit ? "readonly" : "required"}>

        <label>Account Number:</label>
        <input type="text" name="accountNumber" value="${account.accountNumber}" required>

        <label>Customer Name:</label>
        <input type="text" name="customerName" value="${account.customerName}" required>

        <label>Age:</label>
        <input type="number" name="age" value="${account.age}">

        <label>Gender:</label>
        <input type="text" name="gender" value="${account.gender}">

        <label>Contact Number:</label>
        <input type="text" name="contactNumber" value="${account.contactNumber}">

        <label>Email Address:</label>
        <input type="email" name="email" value="${account.email}">

        <label>Residential Address:</label>
        <input type="text" name="address" value="${account.address}">

        <label>Account Type:</label>
        <select name="accountType">
            <option value="Savings">Savings</option>
            <option value="Current">Current</option>
            <option value="Salary">Salary</option>
        </select>

        <label>Initial Balance (₹):</label>
        <input type="number" step="0.01" name="accountBalance" value="${account.accountBalance}" required>

        <input type="submit" value="${isEdit ? "Update Account" : "Create Account"}">
    </form>
    <a class="nav-link" href="/accounts">View All Customer Accounts</a>
</div>
</body>
</html>