# 🚀 Spring Boot JSP & MySQL Project

This is a full-stack web application built using Spring Boot, JSP, and a MySQL database.

## 🛠️ Technologies Used
- **Backend:** Spring Boot
- **Frontend:** JSP, CSS, JavaScript
- **Database:** MySQL
- **Build Tool:** Maven

## 💻 Setup and Installation (How to Run on Local System)

### 1. Database Setup
1. Create a new database in your MySQL server or workbench.
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



#   SREENSHOTS OF PROJECT
  ## Operations Management Dashboard 
 <img width="1920" height="1080" alt="Screenshot (226)" src="https://github.com/user-attachments/assets/8bf71a02-0c5a-45be-bd4c-132de284c7f7" />


   ## Home Page 
  <img width="1920" height="1080" alt="Screenshot (227)" src="https://github.com/user-attachments/assets/06cb4246-7688-4615-8ef3-c4b94965da18" />

   <img width="1920" height="1080" alt="Screenshot (157)" src="https://github.com/user-attachments/assets/9817d266-364e-4f1f-9f67-5488584c7646" />

   ## SDFC Security Notice
   <img width="1920" height="1080" alt="Screenshot (170)" src="https://github.com/user-attachments/assets/3ebc32ee-224d-4ddc-82cb-480a0718b05a" />


   ## Open New Account
   <img width="1920" height="1080" alt="Screenshot (159)" src="https://github.com/user-attachments/assets/c3c97840-44c9-4687-a1a4-de114e201d6c" />

   ## Cheak Amount Balance 
   <img width="1920" height="1080" alt="Screenshot (160)" src="https://github.com/user-attachments/assets/0af44c06-6d71-4fda-832a-0c30d2b196ca" />

   ## Instant Fund Deposit
   <img width="1920" height="1080" alt="Screenshot (161)" src="https://github.com/user-attachments/assets/73d0b63a-b767-4bff-b7ee-fc5219a4c044" />

   ## Secure Cash Withdrawal
   <img width="1920" height="1080" alt="Screenshot (162)" src="https://github.com/user-attachments/assets/54c42525-7393-4472-8278-1eaf50bd737c" />

   ## Instant Fund Transfer
   <img width="1920" height="1080" alt="Screenshot (163)" src="https://github.com/user-attachments/assets/961ed0ac-5f60-4b5a-af20-a67a5b7d7232" />

   ## Account Deactivation
   <img width="1920" height="1080" alt="Screenshot (165)" src="https://github.com/user-attachments/assets/bcab7f5b-f4d7-47ef-958c-5b384854a69e" />

   # ABOUT SDFC 
   <img width="1920" height="1080" alt="Screenshot (168)" src="https://github.com/user-attachments/assets/61cacfb1-1a8b-432e-b34c-79fd43a89721" />
<img width="1920" height="1080" alt="Screenshot (167)" src="https://github.com/user-attachments/assets/958e18b1-5304-4d94-911a-5a4d79b34eed" />
<img width="1920" height="1080" alt="Screenshot (166)" src="https://github.com/user-attachments/assets/d16045e2-b2d3-44d9-b52c-294fdbad0671" />

    




   

 























