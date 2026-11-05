# 🎓 University Course Management System
> **Java Full Stack Development (26CS2001)** — *Question 6*  
> Spring Boot MVC + Spring Data JPA + Hibernate + PostgreSQL + JSP (Full CRUD & Search)

---

## 📌 Project Overview
Academic course portal handling course codes, faculty assignments, credits, semester tracking, and capacity validation in PostgreSQL.

This project is fully structured following the **Enterprise 3-Tier Layered Architecture**:
* **Presentation Layer:** Spring MVC Controller routing requests to dynamic JSP views (`/WEB-INF/views/`).
* **Service Layer:** Business operations, input validation, and data processing.
* **Persistence Layer:** Spring Data JPA Repository (`JpaRepository`) with Hibernate ORM.
* **Database Layer:** Standalone PostgreSQL database (`college`).

---

## ⚡ Key Routes & Endpoints

| HTTP Method | Route URL | Purpose |
| :--- | :--- | :--- |
| `GET` | `/` | Display Course Registration Form |
| `POST` | `/saveCourse` | Save course with capacity validation check |
| `GET` | `/courses` | View course directory and seat capacities |
| `GET` | `/courses?searchId=...` | Search course by Course ID |
| `GET` | `/editCourse/{id}` | Modify course details |
| `GET` | `/deleteCourse/{id}` | Delete course by Course ID |

---

## 🗄️ PostgreSQL DDL Schema (`database.sql`)
Run the following SQL script in your PostgreSQL `college` database:

```sql
CREATE TABLE IF NOT EXISTS course (
    course_id INTEGER PRIMARY KEY,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    faculty_name VARCHAR(100),
    credits INTEGER,
    semester INTEGER,
    course_capacity INTEGER NOT NULL
);
```

---

## 🏗️ Technology Stack
* **Framework:** Spring Boot `3.4.3`
* **Language:** Java SE 17
* **ORM / Database Access:** Spring Data JPA + Hibernate ORM
* **Database Engine:** PostgreSQL (port 5432)
* **View Engine:** Apache Tomcat Jasper + Jakarta JSTL
* **Build System:** Apache Maven

---

## 🚀 How to Run in Eclipse IDE

1. **Start PostgreSQL:** Ensure PostgreSQL is running on port `5432`.
2. **Import into Eclipse:** 
   * Click `File` $\rightarrow$ `Import...` $\rightarrow$ `General` $\rightarrow$ `Existing Projects into Workspace`.
   * Select this project folder and click `Finish`.
3. **Run Application:**
   * Right-click `CourseApplication.java` $\rightarrow$ `Run As` $\rightarrow$ `Java Application`.
4. **Access in Browser:**
   * Open: [http://localhost:8080/](http://localhost:8080/)
