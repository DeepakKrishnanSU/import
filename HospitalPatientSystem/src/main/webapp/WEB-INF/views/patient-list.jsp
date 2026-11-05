<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.hospitalapp.Patient" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registered Patients</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 950px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; }
        .search-box { display: flex; gap: 10px; margin-bottom: 20px; }
        .search-box input { padding: 8px 12px; border: 1px solid #cbd5e1; border-radius: 6px; width: 220px; }
        .search-box button, .btn { padding: 8px 16px; background: #2563eb; color: #fff; border: none; border-radius: 6px; cursor: pointer; text-decoration: none; font-weight: 500; }
        .btn-add { background: #10b981; }
        .btn-reset { background: #64748b; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { padding: 12px; border-bottom: 1px solid #e2e8f0; text-align: left; }
        th { background: #f8fafc; color: #1e293b; }
        .action-link { margin-right: 10px; text-decoration: none; font-weight: 600; }
        .edit-link { color: #0284c7; }
        .delete-link { color: #ef4444; }
    </style>
</head>
<body>
<div class="container">
    <h2>Registered Hospital Patients</h2>
    <form class="search-box" action="/patients" method="get">
        <input type="number" name="searchId" placeholder="Search by Patient ID...">
        <button type="submit">Search</button>
        <a class="btn btn-reset" href="/patients">Reset</a>
        <a class="btn btn-add" href="/" style="margin-left: auto;">+ Register Patient</a>
    </form>
    <table>
        <thead>
            <tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Contact</th><th>Blood Group</th><th>Actions</th></tr>
        </thead>
        <tbody>
        <% List<Patient> list = (List<Patient>) request.getAttribute("patients");
           if (list != null && !list.isEmpty()) {
               for (Patient p : list) { %>
            <tr>
                <td><%= p.getPatientId() %></td>
                <td><%= p.getName() %></td>
                <td><%= p.getAge() %></td>
                <td><%= p.getGender() %></td>
                <td><%= p.getContactNumber() %></td>
                <td><%= p.getBloodGroup() %></td>
                <td>
                    <a class="action-link edit-link" href="/editPatient/<%= p.getPatientId() %>">Edit</a>
                    <a class="action-link delete-link" href="/deletePatient/<%= p.getPatientId() %>" onclick="return confirm('Delete patient record?')">Delete</a>
                </td>
            </tr>
        <%     }
           } else { %>
            <tr><td colspan="7" style="text-align: center; color: #64748b;">No patients found.</td></tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>