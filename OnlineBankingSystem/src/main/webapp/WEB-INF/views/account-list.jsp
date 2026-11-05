<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.bankingapp.BankAccount" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Bank Accounts</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 1100px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; }
        .flex-row { display: flex; gap: 10px; margin-bottom: 20px; align-items: center; }
        .search-box input { padding: 8px 12px; border: 1px solid #cbd5e1; border-radius: 6px; width: 220px; }
        .btn { padding: 8px 16px; background: #2563eb; color: #fff; border: none; border-radius: 6px; cursor: pointer; text-decoration: none; font-weight: 500; }
        .btn-green { background: #10b981; }
        .btn-orange { background: #f59e0b; }
        .btn-reset { background: #64748b; }
        table { width: 100%; border-collapse: collapse; margin-top: 15px; }
        th, td { padding: 10px; border-bottom: 1px solid #e2e8f0; text-align: left; }
        th { background: #f8fafc; color: #1e293b; }
        .trans-box { background: #f1f5f9; padding: 15px; border-radius: 8px; margin-bottom: 20px; display: flex; gap: 20px; }
        .trans-form input { padding: 6px 10px; border: 1px solid #cbd5e1; border-radius: 4px; width: 130px; }
    </style>
</head>
<body>
<div class="container">
    <h2>Online Banking System — Customer Accounts</h2>
    
    <!-- Quick Deposit & Withdraw Operations -->
    <div class="trans-box">
        <form class="trans-form" action="/deposit" method="post">
            <strong>Deposit Money:</strong>
            <input type="text" name="accountNumber" placeholder="Acc Number" required>
            <input type="number" step="0.01" name="amount" placeholder="Amount (₹)" required>
            <button class="btn btn-green" type="submit">Deposit</button>
        </form>
        <form class="trans-form" action="/withdraw" method="post">
            <strong>Withdraw Money:</strong>
            <input type="text" name="accountNumber" placeholder="Acc Number" required>
            <input type="number" step="0.01" name="amount" placeholder="Amount (₹)" required>
            <button class="btn btn-orange" type="submit">Withdraw</button>
        </form>
    </div>

    <form class="flex-row" action="/accounts" method="get">
        <input type="text" name="searchAcc" placeholder="Search by Account Number...">
        <button class="btn" type="submit">Search</button>
        <a class="btn btn-reset" href="/accounts">Reset</a>
        <a class="btn btn-green" href="/" style="margin-left: auto;">+ Open New Account</a>
    </form>

    <table>
        <thead>
            <tr><th>ID</th><th>Account No</th><th>Customer Name</th><th>Type</th><th>Contact</th><th>Balance</th><th>Actions</th></tr>
        </thead>
        <tbody>
        <% List<BankAccount> list = (List<BankAccount>) request.getAttribute("accounts");
           if (list != null && !list.isEmpty()) {
               for (BankAccount a : list) { %>
            <tr>
                <td><%= a.getAccountId() %></td>
                <td><strong><%= a.getAccountNumber() %></strong></td>
                <td><%= a.getCustomerName() %></td>
                <td><%= a.getAccountType() %></td>
                <td><%= a.getContactNumber() %></td>
                <td style="color: #059669; font-weight: bold;">₹<%= String.format("%.2f", a.getAccountBalance()) %></td>
                <td>
                    <a style="color: #0284c7; text-decoration: none; font-weight: 600;" href="/editAccount/<%= a.getAccountId() %>">Edit</a> |
                    <a style="color: #ef4444; text-decoration: none; font-weight: 600;" href="/deleteAccount/<%= a.getAccountId() %>" onclick="return confirm('Delete account record?')">Delete</a>
                </td>
            </tr>
        <%     }
           } else { %>
            <tr><td colspan="7" style="text-align: center; color: #64748b;">No bank accounts found.</td></tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>