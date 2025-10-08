<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="dto.BankAccount" %>
<%
    BankAccount account = (BankAccount) session.getAttribute("account");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Account Details</title>
<style>
/* Global Styles */
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background: linear-gradient(to bottom, #f0f4f8, #d9e2ec);
  margin: 0;
  padding: 0;
}

/* Container */
.account-container {
  background-color: #ffffff;
  width: 450px;
  margin: 60px auto;
  border-radius: 12px;
  box-shadow: 0 8px 20px rgba(0,0,0,0.12);
  padding: 40px 30px;
  color: #333;
  animation: fadeIn 0.5s ease-in-out;
}

/* Header */
h2 {
  text-align: center;
  color: #0d47a1;
  font-size: 28px;
  font-weight: 700;
  margin-bottom: 30px;
  border-bottom: 1px solid #e0e0e0;
  padding-bottom: 15px;
}

/* Details Box */
.details-box p {
  display: flex;
  justify-content: space-between;
  padding: 8px 0;
  border-bottom: 1px solid #e8e8e8;
  font-size: 16px;
}

.details-box p:last-child {
  border-bottom: none;
}

.details-box strong {
  color: #0d47a1;
}

/* No Data Message */
.no-data {
  text-align: center;
  font-size: 16px;
  color: #777;
  padding: 20px 0;
}

/* Back Link */
.back-link {
  text-align: center;
  margin-top: 30px;
}

.back-link a {
  background-color: #0d47a1;
  color: #fff;
  text-decoration: none;
  padding: 10px 20px;
  border-radius: 6px;
  font-weight: 600;
  transition: all 0.3s ease;
}

.back-link a:hover {
  background-color: #073580;
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

/* Fade-in animation */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-20px); }
  to { opacity: 1; transform: translateY(0); }
}
</style>
</head>
<body>

<div class="account-container">
  <h2>Account Details</h2>

  <% if (account != null) { %>
  <div class="details-box">
    <p><strong>Account Number:</strong> <span><%= account.getAccountNumber() %></span></p>
    <p><strong>Name:</strong> <span><%= account.getAccountHolderName() %></span></p>
    <p><strong>Balance:</strong> <span>₹<%= String.format("%.2f", account.getBalance()) %></span></p>
    <p><strong>Account Type:</strong> <span><%= account.getAccountType() %></span></p>
    <p><strong>IFSC Code:</strong> <span><%= account.getIfscCode() %></span></p>
    <p><strong>Branch:</strong> <span><%= account.getBranchName() %></span></p>
    <p><strong>Phone:</strong> <span><%= account.getPhone() %></span></p>
    <p><strong>Email:</strong> <span><%= account.getEmail() %></span></p>
    <p><strong>Address:</strong> <span><%= account.getAddress() %></span></p>
  </div>
  <% } else { %>
  <div class="no-data">
    <p>No account information available.</p>
  </div>
  <% } %>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>
</div>

</body>
</html>
