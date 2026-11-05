# 🎓 Blood Donor Management System
> **Java Full Stack Development (26CS2001)** — *Question 7*  
> Spring Boot MVC + Spring Data JPA + Hibernate + PostgreSQL + JSP (Full CRUD & Search)

---

## 📌 Project Overview
Life-saving blood donor registry featuring custom queries by blood group (e.g. O+, AB-) and donor age eligibility checks (18-65 years).

This project is fully structured following the **Enterprise 3-Tier Layered Architecture**:
* **Presentation Layer:** Spring MVC Controller routing requests to dynamic JSP views (`/WEB-INF/views/`).
* **Service Layer:** Business operations, input validation, and data processing.
* **Persistence Layer:** Spring Data JPA Repository (`JpaRepository`) with Hibernate ORM.
* **Database Layer:** Standalone PostgreSQL database (`college`).

---

## ⚡ Key Routes & Endpoints

| HTTP Method | Route URL | Purpose |
| :--- | :--- | :--- |
| `GET` | `/` | Display Blood Donor Registration Form |
| `POST` | `/saveDonor` | Save donor with 18-65 age eligibility validation |
| `GET` | `/donors` | View all registered blood donors |
| `GET` | `/donors?searchGroup=...` | Search donors by Blood Group (e.g. O+) |
| `GET` | `/editDonor/{id}` | Edit donor record |
| `GET` | `/deleteDonor/{id}` | Delete donor record by ID |

---

## 🗄️ PostgreSQL DDL Schema (`database.sql`)
Run the following SQL script in your PostgreSQL `college` database:

```sql
CREATE TABLE IF NOT EXISTS blood_donor (
    donor_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    gender VARCHAR(10),
    blood_group VARCHAR(10) NOT NULL,
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    last_donation_date VARCHAR(20),
    health_status VARCHAR(50)
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
   * Right-click `DonorApplication.java` $\rightarrow$ `Run As` $\rightarrow$ `Java Application`.
4. **Access in Browser:**
   * Open: [http://localhost:8080/](http://localhost:8080/)
