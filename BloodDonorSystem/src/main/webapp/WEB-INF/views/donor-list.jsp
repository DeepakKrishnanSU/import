<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.donorapp.BloodDonor" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blood Donors</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 1050px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #b91c1c; margin-top: 0; }
        .search-box { display: flex; gap: 10px; margin-bottom: 20px; }
        .search-box input { padding: 8px 12px; border: 1px solid #cbd5e1; border-radius: 6px; width: 220px; }
        .btn { padding: 8px 16px; background: #dc2626; color: #fff; border: none; border-radius: 6px; cursor: pointer; text-decoration: none; font-weight: 500; }
        .btn-reset { background: #64748b; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { padding: 10px; border-bottom: 1px solid #e2e8f0; text-align: left; }
        th { background: #f8fafc; color: #1e293b; }
        .badge { background: #fee2e2; color: #991b1b; padding: 3px 8px; border-radius: 4px; font-weight: bold; }
        .action-link { margin-right: 10px; text-decoration: none; font-weight: 600; }
        .edit-link { color: #0284c7; }
        .delete-link { color: #ef4444; }
    </style>
</head>
<body>
<div class="container">
    <h2>Blood Donor Registry</h2>
    <form class="search-box" action="/donors" method="get">
        <input type="text" name="searchGroup" placeholder="Search by Blood Group (e.g. O+)...">
        <button class="btn" type="submit">Search Group</button>
        <a class="btn btn-reset" href="/donors">Reset</a>
        <a class="btn" href="/" style="margin-left: auto;">+ Register Donor</a>
    </form>
    <table>
        <thead>
            <tr><th>ID</th><th>Name</th><th>Age</th><th>Blood Group</th><th>Contact</th><th>Health Status</th><th>Actions</th></tr>
        </thead>
        <tbody>
        <% List<BloodDonor> list = (List<BloodDonor>) request.getAttribute("donors");
           if (list != null && !list.isEmpty()) {
               for (BloodDonor d : list) { %>
            <tr>
                <td><%= d.getDonorId() %></td>
                <td><%= d.getName() %></td>
                <td><%= d.getAge() %></td>
                <td><span class="badge"><%= d.getBloodGroup() %></span></td>
                <td><%= d.getContactNumber() %></td>
                <td><%= d.getHealthStatus() %></td>
                <td>
                    <a class="action-link edit-link" href="/editDonor/<%= d.getDonorId() %>">Edit</a>
                    <a class="action-link delete-link" href="/deleteDonor/<%= d.getDonorId() %>" onclick="return confirm('Delete donor record?')">Delete</a>
                </td>
            </tr>
        <%     }
           } else { %>
            <tr><td colspan="7" style="text-align: center; color: #64748b;">No blood donors found.</td></tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>