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
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&family=Nunito:wght@300;400;600;700&display=swap');

/* ===== Base Body ===== */
body {
  font-family: 'Poppins', 'Nunito', sans-serif;
  margin: 0;
  padding: 0;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(120deg, #fefafc, #f3f8fb, #e9f4f3);
  background-size: 400% 400%;
  animation: gradientFlow 14s ease infinite;
  overflow: hidden;
  position: relative;
}

/* ===== Animated Background Blobs ===== */
.shape {
  position: absolute;
  border-radius: 50%;
  opacity: 0.3;
  filter: blur(60px);
  animation: floaty 10s ease-in-out infinite alternate;
}
.shape.one { width: 220px; height: 220px; background: #fcd1d1; top: 10%; left: 10%; animation-delay: 1s; }
.shape.two { width: 300px; height: 300px; background: #d4f1f4; bottom: 10%; right: 5%; animation-delay: 2.5s; }
.shape.three { width: 180px; height: 180px; background: #f9e0ae; top: 70%; left: 60%; animation-delay: 4s; }

@keyframes floaty {
  0% { transform: translateY(0px) translateX(0px) scale(1); opacity: 0.4; }
  50% { transform: translateY(-30px) translateX(15px) scale(1.05); opacity: 0.6; }
  100% { transform: translateY(0px) translateX(0px) scale(1); opacity: 0.4; }
}

@keyframes gradientFlow {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

/* ===== Account Container ===== */
.account-container {
  background: rgba(255, 255, 255, 0.55);
  padding: 50px 60px;
  border-radius: 24px;
  box-shadow: 0 20px 45px rgba(0, 0, 0, 0.08);
  backdrop-filter: blur(18px);
  width: 420px;
  z-index: 2;
  animation: fadeIn 1s ease forwards;
}

/* ===== Heading ===== */
h2 {
  text-align: center;
  color: #164e63;
  font-size: 28px;
  font-weight: 700;
  letter-spacing: -0.3px;
  margin-bottom: 30px;
}

/* ===== Account Details Box ===== */
.details-box p {
  margin: 12px 0;
  font-size: 16px;
  color: #333;
  padding: 8px 12px;
  border-radius: 10px;
  background: rgba(255,255,255,0.4);
  box-shadow: inset 0 0 6px rgba(0,0,0,0.04);
}

.details-box strong {
  color: #1a8c8e;
}

/* ===== No Data Text ===== */
.no-data {
  text-align: center;
  color: #666;
  font-size: 16px;
  margin-top: 25px;
}

/* ===== Back Button ===== */
.back-link {
  text-align: center;
  margin-top: 30px;
}

.back-link a {
  background: linear-gradient(135deg, #1a8c8e, #9ad1c8);
  color: #fff;
  text-decoration: none;
  padding: 10px 20px;
  border-radius: 14px;
  font-weight: 600;
  transition: 0.3s ease;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
}

.back-link a:hover {
  background: linear-gradient(135deg, #9ad1c8, #1a8c8e);
  transform: translateY(-3px);
  box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
}

/* ===== Fade In Animation ===== */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-25px); }
  to { opacity: 1; transform: translateY(0); }
}
</style>
</head>
<body>

<!-- Animated Background -->
<div class="shape one"></div>
<div class="shape two"></div>
<div class="shape three"></div>

<div class="account-container">
  <h2>Account Details</h2>

  <% if (account != null) { %>
  <div class="details-box">
    <p><strong>Account Number:</strong> <%= account.getAccountNumber() %></p>
    <p><strong>Name:</strong> <%= account.getAccountHolderName() %></p>
    <p><strong>Balance:</strong> ₹<%= account.getBalance() %></p>
    <p><strong>Account Type:</strong> <%= account.getAccountType() %></p>
    <p><strong>IFSC Code:</strong> <%= account.getIfscCode() %></p>
    <p><strong>Branch:</strong> <%= account.getBranchName() %></p>
    <p><strong>Phone:</strong> <%= account.getPhone() %></p>
    <p><strong>Email:</strong> <%= account.getEmail() %></p>
    <p><strong>Address:</strong> <%= account.getAddress() %></p>
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
