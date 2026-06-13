# 🚀 Spring Boot JSP & MySQL Project

This is a full-stack web application built using Spring Boot, JSP, and a MySQL database.

## 🛠️ Technologies Used
- **Backend:** Spring Boot (Java)
- **Frontend:** JSP, CSS, JavaScript
- **Database:** MySQL
- **Build Tool:** Maven

## 💻 Setup and Installation (How to Run on Local System)

### 1. Database Setup
1. Create a new database in your MySQL server.
2. -- Bank Project Database Schema

   -- Run this query in your MySQL Server before starting the Spring Boot application

CREATE TABLE IF NOT EXISTS accounts (
    acc_number BIGINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    amount DOUBLE DEFAULT 0.0,
    address VARCHAR(255),
    mobile BIGINT NOT NULL
);

--  Testing ke liye sample account data (Optional)

--  INSERT INTO accounts (acc_number, name, password, amount, address, mobile) VALUES (1001001001, 'Rahul Kumar', 'securePass123', 5000.0, 'Delhi, India', 9876543210);
 )


 # This is important to update in your project 
3. Update your MySQL `username` and `password` in the `src/main/resources/application.properties` file.


### 2. How to Run the Project
1. Import the project into your IDE (Eclipse / IntelliJ / STS).
2. Right-click on the project and select `Run As -> Spring Boot App`.
3. Open your browser and navigate to: `http://localhost:8080`
