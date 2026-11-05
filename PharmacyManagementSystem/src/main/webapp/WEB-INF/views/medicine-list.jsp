<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.pharmacyapp.Medicine" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pharmacy Inventory</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 1050px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #0f766e; margin-top: 0; }
        .search-box { display: flex; gap: 10px; margin-bottom: 20px; }
        .search-box input { padding: 8px 12px; border: 1px solid #cbd5e1; border-radius: 6px; width: 220px; }
        .btn { padding: 8px 16px; background: #0d9488; color: #fff; border: none; border-radius: 6px; cursor: pointer; text-decoration: none; font-weight: 500; }
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
    <h2>Pharmacy Medicine Stock</h2>
    <form class="search-box" action="/medicines" method="get">
        <input type="text" name="keyword" placeholder="Search by Medicine Name...">
        <button class="btn" type="submit">Search</button>
        <a class="btn btn-reset" href="/medicines">Reset</a>
        <a class="btn" href="/" style="margin-left: auto;">+ Add Medicine</a>
    </form>
    <table>
        <thead>
            <tr><th>ID</th><th>Medicine Name</th><th>Category</th><th>Manufacturer</th><th>Price</th><th>Stock</th><th>EXP</th><th>Actions</th></tr>
        </thead>
        <tbody>
        <% List<Medicine> list = (List<Medicine>) request.getAttribute("medicines");
           if (list != null && !list.isEmpty()) {
               for (Medicine m : list) { %>
            <tr>
                <td><%= m.getMedicineId() %></td>
                <td><strong><%= m.getMedicineName() %></strong></td>
                <td><%= m.getCategory() %></td>
                <td><%= m.getManufacturer() %></td>
                <td>₹<%= String.format("%.2f", m.getPrice()) %></td>
                <td><strong><%= m.getQuantity() %></strong></td>
                <td><%= m.getExpiryDate() %></td>
                <td>
                    <a class="action-link edit-link" href="/editMedicine/<%= m.getMedicineId() %>">Edit</a>
                    <a class="action-link delete-link" href="/deleteMedicine/<%= m.getMedicineId() %>" onclick="return confirm('Delete medicine record?')">Delete</a>
                </td>
            </tr>
        <%     }
           } else { %>
            <tr><td colspan="8" style="text-align: center; color: #64748b;">No medicines found.</td></tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>