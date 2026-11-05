<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.example.libraryapp.Book" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Books</title>
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
        th, td { padding: 12px; border-bottom: 1px solid #e2e8f0; text-align: left; }
        th { background: #f8fafc; color: #1e293b; }
        .action-link { margin-right: 10px; text-decoration: none; font-weight: 600; }
        .edit-link { color: #0284c7; }
        .delete-link { color: #ef4444; }
    </style>
</head>
<body>
<div class="container">
    <h2>Library Book Inventory</h2>
    <form class="search-box" action="/books" method="get">
        <input type="number" name="searchId" placeholder="Search by Book ID...">
        <button class="btn" type="submit">Search</button>
        <a class="btn btn-reset" href="/books">Reset</a>
        <a class="btn btn-add" href="/" style="margin-left: auto;">+ Add New Book</a>
    </form>
    <table>
        <thead>
            <tr><th>ID</th><th>Title</th><th>Author</th><th>Publisher</th><th>Category</th><th>Copies</th><th>Actions</th></tr>
        </thead>
        <tbody>
        <% List<Book> list = (List<Book>) request.getAttribute("books");
           if (list != null && !list.isEmpty()) {
               for (Book b : list) { %>
            <tr>
                <td><%= b.getBookId() %></td>
                <td><%= b.getTitle() %></td>
                <td><%= b.getAuthor() %></td>
                <td><%= b.getPublisher() %></td>
                <td><%= b.getCategory() %></td>
                <td><strong><%= b.getAvailableCopies() %></strong></td>
                <td>
                    <a class="action-link edit-link" href="/editBook/<%= b.getBookId() %>">Edit</a>
                    <a class="action-link delete-link" href="/deleteBook/<%= b.getBookId() %>" onclick="return confirm('Delete book?')">Delete</a>
                </td>
            </tr>
        <%     }
           } else { %>
            <tr><td colspan="7" style="text-align: center; color: #64748b;">No books found.</td></tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>