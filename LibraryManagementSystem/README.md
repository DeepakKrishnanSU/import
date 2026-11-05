# 🎓 Library Book Management System
> **Java Full Stack Development (26CS2001)** — *Question 2*  
> Spring Boot MVC + Spring Data JPA + Hibernate + PostgreSQL + JSP (Full CRUD & Search)

---

## 📌 Project Overview
Spring Boot MVC web application managing books, inventory counts, publishers, categories, and authors using PostgreSQL and Spring Data JPA.

This project is fully structured following the **Enterprise 3-Tier Layered Architecture**:
* **Presentation Layer:** Spring MVC Controller routing requests to dynamic JSP views (`/WEB-INF/views/`).
* **Service Layer:** Business operations, input validation, and data processing.
* **Persistence Layer:** Spring Data JPA Repository (`JpaRepository`) with Hibernate ORM.
* **Database Layer:** Standalone PostgreSQL database (`college`).

---

## ⚡ Key Routes & Endpoints

| HTTP Method | Route URL | Purpose |
| :--- | :--- | :--- |
| `GET` | `/` | Display Book Registration Form |
| `POST` | `/saveBook` | Persist new book or update record in PostgreSQL |
| `GET` | `/books` | View all library books and available copies |
| `GET` | `/books?searchId=...` | Search book by Book ID |
| `GET` | `/editBook/{id}` | Edit book details |
| `GET` | `/deleteBook/{id}` | Delete book record by Book ID |

---

## 🗄️ PostgreSQL DDL Schema (`database.sql`)
Run the following SQL script in your PostgreSQL `college` database:

```sql
CREATE TABLE IF NOT EXISTS book (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publisher VARCHAR(100),
    isbn VARCHAR(30),
    edition VARCHAR(20),
    publication_year INTEGER,
    category VARCHAR(50),
    available_copies INTEGER NOT NULL
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
   * Right-click `LibraryApplication.java` $\rightarrow$ `Run As` $\rightarrow$ `Java Application`.
4. **Access in Browser:**
   * Open: [http://localhost:8080/](http://localhost:8080/)
