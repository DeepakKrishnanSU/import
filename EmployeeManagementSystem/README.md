# 🎓 Corporate Employee Management System
> **Java Full Stack Development (26CS2001)** — *Question 3*  
> Spring Boot MVC + Spring Data JPA + Hibernate + PostgreSQL + JSP (Full CRUD & Search)

---

## 📌 Project Overview
Spring Boot MVC staff management application handling departments, designations, salary calculations, and employee profiles in PostgreSQL.

This project is fully structured following the **Enterprise 3-Tier Layered Architecture**:
* **Presentation Layer:** Spring MVC Controller routing requests to dynamic JSP views (`/WEB-INF/views/`).
* **Service Layer:** Business operations, input validation, and data processing.
* **Persistence Layer:** Spring Data JPA Repository (`JpaRepository`) with Hibernate ORM.
* **Database Layer:** Standalone PostgreSQL database (`college`).

---

## ⚡ Key Routes & Endpoints

| HTTP Method | Route URL | Purpose |
| :--- | :--- | :--- |
| `GET` | `/` | Display Employee Registration Form |
| `POST` | `/saveEmployee` | Save employee details to PostgreSQL |
| `GET` | `/employees` | View complete employee directory |
| `GET` | `/employees?searchId=...` | Search employee by Employee ID |
| `GET` | `/editEmployee/{id}` | Edit employee record |
| `GET` | `/deleteEmployee/{id}` | Delete employee record by Employee ID |

---

## 🗄️ PostgreSQL DDL Schema (`database.sql`)
Run the following SQL script in your PostgreSQL `college` database:

```sql
CREATE TABLE IF NOT EXISTS employee (
    employee_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    department VARCHAR(50),
    designation VARCHAR(50),
    date_of_joining VARCHAR(20),
    salary DOUBLE PRECISION NOT NULL
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
   * Right-click `EmployeeApplication.java` $\rightarrow$ `Run As` $\rightarrow$ `Java Application`.
4. **Access in Browser:**
   * Open: [http://localhost:8080/](http://localhost:8080/)
