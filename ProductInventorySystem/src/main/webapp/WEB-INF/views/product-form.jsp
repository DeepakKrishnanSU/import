<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Inventory</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 520px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"], input[type="date"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #1d4ed8; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Product" : "Add Inventory Product"}</h2>
    <form action="/saveProduct" method="post">
        <label>Product ID:</label>
        <input type="number" name="productId" value="${product.productId}" ${isEdit ? "readonly" : "required"}>

        <label>Product Name:</label>
        <input type="text" name="productName" value="${product.productName}" required>

        <label>Category:</label>
        <input type="text" name="category" value="${product.category}">

        <label>Brand:</label>
        <input type="text" name="brand" value="${product.brand}">

        <label>Description:</label>
        <input type="text" name="description" value="${product.description}">

        <label>Price (₹):</label>
        <input type="number" step="0.01" name="price" value="${product.price}" required>

        <label>Quantity in Stock:</label>
        <input type="number" name="quantity" value="${product.quantity}" required>

        <label>Supplier Name:</label>
        <input type="text" name="supplierName" value="${product.supplierName}">

        <label>Manufacturing Date:</label>
        <input type="date" name="manufacturingDate" value="${product.manufacturingDate}">

        <label>Expiry Date:</label>
        <input type="date" name="expiryDate" value="${product.expiryDate}">

        <input type="submit" value="${isEdit ? "Update Product" : "Save Product"}">
    </form>
    <a class="nav-link" href="/products">View All Products</a>
</div>
</body>
</html>