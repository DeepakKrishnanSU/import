# 🎓 Pharmacy Medicine Inventory System
> **Java Full Stack Development (26CS2001)** — *Question 8*  
> Spring Boot MVC + Spring Data JPA + Hibernate + PostgreSQL + JSP (Full CRUD & Search)

---

## 📌 Project Overview
Pharmacy stock management application with batch tracking, expiry date monitoring, non-negative quantity checks, and name searches.

This project is fully structured following the **Enterprise 3-Tier Layered Architecture**:
* **Presentation Layer:** Spring MVC Controller routing requests to dynamic JSP views (`/WEB-INF/views/`).
* **Service Layer:** Business operations, input validation, and data processing.
* **Persistence Layer:** Spring Data JPA Repository (`JpaRepository`) with Hibernate ORM.
* **Database Layer:** Standalone PostgreSQL database (`college`).

---

## ⚡ Key Routes & Endpoints

| HTTP Method | Route URL | Purpose |
| :--- | :--- | :--- |
| `GET` | `/` | Display Medicine Entry Form |
| `POST` | `/saveMedicine` | Persist medicine with non-negative stock check |
| `GET` | `/medicines` | View all medicines and stock levels |
| `GET` | `/medicines?keyword=...` | Search medicine by name |
| `GET` | `/editMedicine/{id}` | Edit medicine details |
| `GET` | `/deleteMedicine/{id}` | Delete medicine by Medicine ID |

---

## 🗄️ PostgreSQL DDL Schema (`database.sql`)
Run the following SQL script in your PostgreSQL `college` database:

```sql
CREATE TABLE IF NOT EXISTS medicine (
    medicine_id INTEGER PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    manufacturer VARCHAR(100),
    batch_number VARCHAR(50),
    price DOUBLE PRECISION NOT NULL,
    quantity INTEGER NOT NULL,
    manufacturing_date VARCHAR(20),
    expiry_date VARCHAR(20),
    supplier_name VARCHAR(100)
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
   * Right-click `PharmacyApplication.java` $\rightarrow$ `Run As` $\rightarrow$ `Java Application`.
4. **Access in Browser:**
   * Open: [http://localhost:8080/](http://localhost:8080/)
