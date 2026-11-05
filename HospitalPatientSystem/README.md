# 🎓 Hospital Patient Registration System
> **Java Full Stack Development (26CS2001)** — *Question 1*  
> Spring Boot MVC + Spring Data JPA + Hibernate + PostgreSQL + JSP (Full CRUD & Search)

---

## 📌 Project Overview
Spring Boot MVC full-stack patient management system with PostgreSQL, Spring Data JPA, Hibernate, and dynamic JSP views.

This project is fully structured following the **Enterprise 3-Tier Layered Architecture**:
* **Presentation Layer:** Spring MVC Controller routing requests to dynamic JSP views (`/WEB-INF/views/`).
* **Service Layer:** Business operations, input validation, and data processing.
* **Persistence Layer:** Spring Data JPA Repository (`JpaRepository`) with Hibernate ORM.
* **Database Layer:** Standalone PostgreSQL database (`college`).

---

## ⚡ Key Routes & Endpoints

| HTTP Method | Route URL | Purpose |
| :--- | :--- | :--- |
| `GET` | `/` | Display Patient Registration Form |
| `POST` | `/savePatient` | Save or update patient details in PostgreSQL |
| `GET` | `/patients` | List all patients in a JSP table |
| `GET` | `/patients?searchId=...` | Search patient by Patient ID |
| `GET` | `/editPatient/{id}` | Pre-populate and update patient record |
| `GET` | `/deletePatient/{id}` | Delete patient record by Patient ID |

---

## 🗄️ PostgreSQL DDL Schema (`database.sql`)
Run the following SQL script in your PostgreSQL `college` database:

```sql
CREATE TABLE IF NOT EXISTS patient (
    patient_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    blood_group VARCHAR(10)
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
   * Right-click `HospitalApplication.java` $\rightarrow$ `Run As` $\rightarrow$ `Java Application`.
4. **Access in Browser:**
   * Open: [http://localhost:8080/](http://localhost:8080/)
