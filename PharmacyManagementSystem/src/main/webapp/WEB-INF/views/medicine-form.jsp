<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Pharmacy Management</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 520px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #0f766e; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"], input[type="date"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #0d9488; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #0f766e; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Medicine Record" : "Add New Medicine"}</h2>
    <form action="/saveMedicine" method="post">
        <label>Medicine ID:</label>
        <input type="number" name="medicineId" value="${medicine.medicineId}" ${isEdit ? "readonly" : "required"}>

        <label>Medicine Name:</label>
        <input type="text" name="medicineName" value="${medicine.medicineName}" required>

        <label>Category (Tablet / Syrup / Injection):</label>
        <input type="text" name="category" value="${medicine.category}">

        <label>Manufacturer:</label>
        <input type="text" name="manufacturer" value="${medicine.manufacturer}">

        <label>Batch Number:</label>
        <input type="text" name="batchNumber" value="${medicine.batchNumber}">

        <label>Price (₹):</label>
        <input type="number" step="0.01" name="price" value="${medicine.price}" required>

        <label>Quantity in Stock:</label>
        <input type="number" name="quantity" value="${medicine.quantity}" required min="0">

        <label>Manufacturing Date:</label>
        <input type="date" name="manufacturingDate" value="${medicine.manufacturingDate}">

        <label>Expiry Date:</label>
        <input type="date" name="expiryDate" value="${medicine.expiryDate}">

        <label>Supplier Name:</label>
        <input type="text" name="supplierName" value="${medicine.supplierName}">

        <input type="submit" value="${isEdit ? "Update Medicine" : "Save Medicine"}">
    </form>
    <a class="nav-link" href="/medicines">View Available Medicines</a>
</div>
</body>
</html>