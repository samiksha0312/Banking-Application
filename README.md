# 🏦 Banking Application

This Banking Management System is a full-stack Java web application built using JSP, Servlets, JDBC, and MySQL.
It simulates real-world banking operations — allowing users to create accounts, perform transactions (deposit, withdraw, transfer), and manage account details securely.

Designed using Object-Oriented Programming (OOP) principles, it follows a clean layered structure that separates the data, business logic, and presentation layers for scalability and maintainability.

## Key Features
_____________________________________________________________________________
✅ Create, view, and update accounts

💰 Deposit / Withdraw / Transfer money

📜 Transaction history with date & time

🔐 Secure login with PIN verification

🧾 Real-time balance updates

🧱 Modular design using OOP & MVC

🗄 JDBC-based database connectivity

🎨 Modern JSP-based UI
_____________________________________________________________________________________
## 🛠 Tech Stack

| Layer      | Technology          |
|------------|---------------------|
| Frontend   | HTML5, CSS3, JSP    |
| Backend    | Java Servlets (MVC) |
| Database   | MySQL (via JDBC)    |
| Server     | Apache Tomcat 9.0   |
| Build Tool | Maven               |
| IDE        | Eclipse IDEA        |

----------------------------------------------------------------------------------------
  # TECHNOLOGIES USED 📌

## Front End 📫
```
![HTML5](https://img.shields.io/static/v1?style=for-the-badge&message=HTML5&color=E34F26&logo=HTML5&logoColor=FFFFFF&label=)
![CSS3](https://img.shields.io/static/v1?style=for-the-badge&message=CSS3&color=1572B6&logo=CSS3&logoColor=FFFFFF&label=)
![JavaScript](https://img.shields.io/static/v1?style=for-the-badge&message=JavaScript&color=222222&logo=JavaScript&logoColor=F7DF1E&label=)
```

## Server Side ⚡
```
![Java](https://img.shields.io/static/v1?style=for-the-badge&message=Java&color=007396&logo=java&logoColor=FFFFFF&label=)
![Servlets](https://img.shields.io/static/v1?style=for-the-badge&message=Servlets&color=7952B3&logo=Java&logoColor=FFFFFF&label=)
![Jsp](https://img.shields.io/static/v1?style=for-the-badge&message=Jsp&color=E34F26&logo=Java&logoColor=FFFFFF&label=)
![JDBC](https://img.shields.io/static/v1?style=for-the-badge&message=JDBC&color=222223&logo=jdbc&logoColor=FFFFFF&label=)
```

## Development Tools 📺

![Eclipse](https://img.shields.io/static/v1?style=for-the-badge&message=eclipse&color=007396&logo=eclipse&logoColor=FFFFFF&label=)

## Database 📦

![Mysql](https://img.shields.io/static/v1?style=for-the-badge&message=MySQL&color=7952B3&logo=mysql&logoColor=FFFFFF&label=)


# Installation and setup guide
Follow these steps to set up and run the Bank Management System project on your local machine 🏦
## 🔧 What You’ll Need First
Ensure these tools are installed before diving in:
- ☕ Java Development Kit (JDK) version 11 or higher
- 🖥 IntelliJ IDEA or Eclipse IDE
- 🐱‍🏍 Apache Tomcat version 9+
- 🗄 MySQL Server and MySQL Workbench
- ⚙ Maven (only if your project uses it)

## 📥 Step 1: Grab the Project Code
Clone the repository from GitHub and open it in your preferred IDE:
```
git clone [https://github.com/samiksha0312/Banking-Application]
cd Bank_project
```

Launch IntelliJ or Eclipse and import the project.

## 🗃 Step 2: Initialize the Database
Fire up MySQL Workbench (or any SQL client you prefer).
Create and select the database:
```
CREATE DATABASE bank_app;
USE my_bank;
```
Now either import the SQL file (database/my_bank.sql) or manually execute the schema below.

## 🧬 Step 3: Create Tables
Run the following SQL to set up your schema:
```
-- Bank Accounts Table
CREATE TABLE bank_accounts (
    accountNumber BIGINT PRIMARY KEY,
    accountHolderName VARCHAR(100) NOT NULL,
    balance DOUBLE NOT NULL,
    accountType VARCHAR(20) NOT NULL,
    ifscCode VARCHAR(20) NOT NULL,
    branchName VARCHAR(50),
    address VARCHAR(200),
    phone VARCHAR(15),
    email VARCHAR(100),
    pin VARCHAR(10) NOT NULL
);

-- Transactions Table
CREATE TABLE transactions (
    transactionId BIGINT AUTO_INCREMENT PRIMARY KEY,
    transactionType VARCHAR(20) NOT NULL,
    amount DOUBLE NOT NULL,
    transactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    transactionFrom BIGINT,
    transactionTo BIGINT,
    transactionDescription VARCHAR(200),
    FOREIGN KEY (transactionFrom) REFERENCES bank_accounts(accountNumber),
    FOREIGN KEY (transactionTo) REFERENCES bank_accounts(accountNumber)
);
```

✅ Your database is now structured and ready to go!

## 🔐 Step 4: Link Your App to the Database
Navigate to:
```
src/main/java/util/DBConnection.java


Update the credentials to match your MySQL setup:

private static final String URL = "jdbc:mysql://localhost:3306/my_bank";
private static final String USER = "root";
private static final String PASSWORD = "root";
```
💡 Ensure MySQL Server is running before launching the app.

## 🧭 Step 5: Configure Tomcat Server
In Eclipse:
- Go to Run → Run as server
- select a  Tomcat Server → Local
- Set the Application context to /Bank_Project
- Use Port 8080


## ▶ Step 6: Launch the Application
Hit the green ▶ Run button in eclipse.
Then open your browser and visit:

http://localhost:8080/Bank_Project


You should now see the homepage of your banking application 

## 🧑‍💼 Step 7: Create & Access Accounts
Use the “Create Account” form to register a new user.
Once registered, you can log in, check balances, and perform transactions.

✅ All Set!
Your Bank Management System is now live on your local machine. Time to explore and test it out 🚀
____________________________________________________________________________________________________________

#  Project Structure
```
src
└── main
|   └── java
|       ├── controller
|       │   ├── BankTransfer.java
|       │   ├── CheckBalance.java
|       │   ├── CreateAccount.java
|       │   ├── deposit.java
|       │   ├── DisplayTransactions.java
|       │   ├── LoginServlet.java
|       │   ├── updateAccountDetails.java
|       │   ├── updatePIN.java
|       │   └── Withdraw.java
|       │
|       ├── dao
|       │   ├── BankAccountDao.java
|       │   ├── TransactionsDao.java
|       │   └── UserDao.java
|       │
|       ├── dto
|       │   ├── BankAccount.java
|       │   └── Transaction.java
|       │
|       ├── service
|       │   ├── BankingService.java
|       │   └── BankingServiceImpl.java
|       │
|       └── util
|       |    └── DBConnection.java
|       |
|       |__webapp/  
|             ├── account.jsp
|             ├── bankTransfer.jsp
|             ├── checkBalannce.jsp  ← (Note: Likely a typo, should be "checkBalance.jsp")
|             ├── dashboard.jsp
|             ├── deposit.jsp
|             ├── error500.jsp
|             ├── index.jsp
|             ├── login.jsp
|             ├── logout.jsp
|             ├── signup.jsp
|             ├── SuccessRegistration.jsp
|             ├── transactions.jsp
|             ├── updateAccountDetails.jsp
|             ├── updatePIN.jsp
|             └── withdraw.jsp
|__pom.xml
 ```       

## 🤝 Contribution of the Project


### 🍴 Step 1: Fork the Repository
Head to the GitHub page of the project and click Fork to create your own copy.

### 🌿 Step 2: Create a Feature Branch
In your local repo, create a new branch for your changes:
git checkout -b your-feature-name


git checkout -b your-feature-name


### 💾 Step 3: Commit Your Changes
Once you've made your edits, commit them with a clear message:

git commit -m ""

### 🚀 Step 4: Push to GitHub
Send your branch to your GitHub fork:

git push origin your-feature-name

### 📬 Step 5: Open a Pull Request
Go to the original repository and click Compare & Pull Request.
Add a description, review your changes, and submit the PR.

## 📮 Contact

SAMIKSHA SINGH

📧 Email: samikshas0212@gmail.com

💼 LinkedIn: https://www.linkedin.com/in/samikshasingh12

🐙 GitHub: https://github.com/samiksha0312
