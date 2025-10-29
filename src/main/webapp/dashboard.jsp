<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<style >
/* ✅ Original Base Code */
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background-color: #f3f4f6;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
}

.dashboard-container {
  background-color: #fff;
  padding: 30px 40px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  text-align: center;
  width: 320px;
}

h2 {
  font-size: 26px;
  margin-bottom: 25px;
  color: #222;
}

.dashboard-menu {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

.dashboard-menu li {
  margin: 15px 0;
}

.dashboard-menu a {
  display: block;
  background-color: #007bff;
  color: white;
  padding: 10px 0;
  border-radius: 8px;
  text-decoration: none;
  font-weight: bold;
  transition: 0.3s ease;
}

.dashboard-menu a:hover {
  background-color: #0056b3;
  transform: translateY(-2px);
}

.logout-btn {
  background-color: #e63946 !important;
}

.logout-btn:hover {
  background-color: #c62828 !important;
}

/* 🌸 Pinteresty Professional Theme Enhancements */
body {
  background: linear-gradient(135deg, #f6f9fc, #e9f1fb);
}

.dashboard-container {
  background: linear-gradient(145deg, #ffffff, #fafafa);
  border: 1px solid #e4e9f0;
  transition: all 0.4s ease;
}

.dashboard-container:hover {
  transform: translateY(-4px);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.12);
}

h2 {
  background: linear-gradient(90deg, #007bff, #00aaff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-weight: 700;
  letter-spacing: 0.5px;
}

.dashboard-menu a {
  background: linear-gradient(90deg, #007bff, #00aaff);
  box-shadow: 0 3px 6px rgba(0, 123, 255, 0.3);
  letter-spacing: 0.3px;
}

.dashboard-menu a:hover {
  background: linear-gradient(90deg, #0056b3, #0080ff);
  transform: translateY(-3px);
  box-shadow: 0 6px 12px rgba(0, 123, 255, 0.25);
}

.dashboard-menu li {
  transition: transform 0.3s ease;
}

.dashboard-menu li:hover {
  transform: scale(1.03);
}

.logout-btn {
  background: linear-gradient(90deg, #ff4b5c, #e63946) !important;
  box-shadow: 0 3px 6px rgba(255, 75, 92, 0.3);
}

.logout-btn:hover {
  background: linear-gradient(90deg, #d62828, #c1121f) !important;
  transform: translateY(-3px);
  box-shadow: 0 6px 12px rgba(255, 75, 92, 0.25);
}

/* ✨ Subtle animations */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(10px); }
  to { opacity: 1; transform: translateY(0); }
}

.dashboard-container {
  animation: fadeIn 0.6s ease-in-out;
}
</style>
</head>
<body>

<div class="dashboard-container">
  <h2>Welcome to Your Dashboard</h2>

  <ul class="dashboard-menu">
    <li><a href="account.jsp"> View Account</a></li>
    <li><a href="bankTransfer.jsp"> Transfer Money</a></li>
    <li><a href="checkBalannce.jsp"> Check Balance</a></li>
    <li><a href="DisplayTransaction"> View Transaction History</a></li>
    <li><a href="deposit.jsp"> Deposit</a></li>
    <li><a href="withdraw.jsp"> Withdraw</a></li>
    <li><a href="updatePIN.jsp"> Update PIN</a></li>
    <li><a href="updateAccountDetails.jsp"> Update Account Details</a></li>
    <li><a href="logout.jsp" class="logout-btn"> Logout</a></li>
  </ul>
</div>

</body>
</html>
