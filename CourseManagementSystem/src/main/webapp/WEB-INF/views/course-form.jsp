<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Course Management</title>
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
    <h2>${isEdit ? "Update Course" : "Add Academic Course"}</h2>
    <form action="/saveCourse" method="post">
        <label>Course ID:</label>
        <input type="number" name="courseId" value="${course.courseId}" ${isEdit ? "readonly" : "required"}>

        <label>Course Code:</label>
        <input type="text" name="courseCode" value="${course.courseCode}" required placeholder="e.g. 26CS2001">

        <label>Course Name:</label>
        <input type="text" name="courseName" value="${course.courseName}" required placeholder="e.g. Java Full Stack">

        <label>Department:</label>
        <input type="text" name="department" value="${course.department}">

        <label>Faculty In-Charge:</label>
        <input type="text" name="facultyName" value="${course.facultyName}">

        <label>Credits:</label>
        <input type="number" name="credits" value="${course.credits}" required>

        <label>Semester:</label>
        <input type="number" name="semester" value="${course.semester}" required>

        <label>Course Capacity (Seats):</label>
        <input type="number" name="courseCapacity" value="${course.courseCapacity}" required>

        <input type="submit" value="${isEdit ? "Update Course" : "Save Course"}">
    </form>
    <a class="nav-link" href="/courses">View All Academic Courses</a>
</div>
</body>
</html>