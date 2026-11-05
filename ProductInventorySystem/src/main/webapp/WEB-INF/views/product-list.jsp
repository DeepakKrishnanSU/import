<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.productapp.Product" %>
<!DOCTYPE html>
<html>
<head>
    <title>Warehouse Inventory</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 1000px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; }
        .search-box { display: flex; gap: 10px; margin-bottom: 20px; }
        .search-box input { padding: 8px 12px; border: 1px solid #cbd5e1; border-radius: 6px; width: 220px; }
        .btn { padding: 8px 16px; background: #2563eb; color: #fff; border: none; border-radius: 6px; cursor: pointer; text-decoration: none; font-weight: 500; }
        .btn-add { background: #10b981; }
        .btn-reset { background: #64748b; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { padding: 10px; border-bottom: 1px solid #e2e8f0; text-align: left; }
        th { background: #f8fafc; color: #1e293b; }
        .action-link { margin-right: 10px; text-decoration: none; font-weight: 600; }
        .edit-link { color: #0284c7; }
        .delete-link { color: #ef4444; }
    </style>
</head>
<body>
<div class="container">
    <h2>Product Inventory Management</h2>
    <form class="search-box" action="/products" method="get">
        <input type="number" name="searchId" placeholder="Search by Product ID...">
        <button class="btn" type="submit">Search</button>
        <a class="btn btn-reset" href="/products">Reset</a>
        <a class="btn btn-add" href="/" style="margin-left: auto;">+ Add Product</a>
    </form>
    <table>
        <thead>
            <tr><th>ID</th><th>Name</th><th>Category</th><th>Brand</th><th>Price</th><th>Stock</th><th>EXP</th><th>Actions</th></tr>
        </thead>
        <tbody>
        <% List<Product> list = (List<Product>) request.getAttribute("products");
           if (list != null && !list.isEmpty()) {
               for (Product p : list) { %>
            <tr>
                <td><%= p.getProductId() %></td>
                <td><%= p.getProductName() %></td>
                <td><%= p.getCategory() %></td>
                <td><%= p.getBrand() %></td>
                <td>₹<%= String.format("%.2f", p.getPrice()) %></td>
                <td><strong><%= p.getQuantity() %></strong></td>
                <td><%= p.getExpiryDate() %></td>
                <td>
                    <a class="action-link edit-link" href="/editProduct/<%= p.getProductId() %>">Edit</a>
                    <a class="action-link delete-link" href="/deleteProduct/<%= p.getProductId() %>" onclick="return confirm('Delete product record?')">Delete</a>
                </td>
            </tr>
        <%     }
           } else { %>
            <tr><td colspan="8" style="text-align: center; color: #64748b;">No products found.</td></tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>