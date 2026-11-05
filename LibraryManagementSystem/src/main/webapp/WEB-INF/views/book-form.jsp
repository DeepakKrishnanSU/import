<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Library Book Management</title>
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background: #f0f4f8; margin: 0; padding: 40px; }
        .container { max-width: 520px; margin: auto; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        h2 { color: #1e3a8a; margin-top: 0; text-align: center; }
        label { display: block; margin-top: 12px; font-weight: 600; color: #334155; }
        input[type="text"], input[type="number"] { width: 100%; padding: 10px; margin-top: 4px; border: 1px solid #cbd5e1; border-radius: 6px; box-sizing: border-box; }
        input[type="submit"] { margin-top: 20px; width: 100%; padding: 12px; background: #2563eb; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; font-weight: bold; }
        input[type="submit"]:hover { background: #1d4ed8; }
        .nav-link { display: block; text-align: center; margin-top: 15px; color: #475569; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>${isEdit ? "Update Book Details" : "Add New Book"}</h2>
    <form action="/saveBook" method="post">
        <label>Book ID:</label>
        <input type="number" name="bookId" value="${book.bookId}" ${isEdit ? "readonly" : "required"}>

        <label>Title:</label>
        <input type="text" name="title" value="${book.title}" required>

        <label>Author:</label>
        <input type="text" name="author" value="${book.author}" required>

        <label>Publisher:</label>
        <input type="text" name="publisher" value="${book.publisher}">

        <label>ISBN:</label>
        <input type="text" name="isbn" value="${book.isbn}">

        <label>Edition:</label>
        <input type="text" name="edition" value="${book.edition}">

        <label>Publication Year:</label>
        <input type="number" name="publicationYear" value="${book.publicationYear}">

        <label>Category:</label>
        <input type="text" name="category" value="${book.category}">

        <label>Available Copies:</label>
        <input type="number" name="availableCopies" value="${book.availableCopies}" required>

        <input type="submit" value="${isEdit ? "Update Book" : "Save Book"}">
    </form>
    <a class="nav-link" href="/books">View All Books</a>
</div>
</body>
</html>