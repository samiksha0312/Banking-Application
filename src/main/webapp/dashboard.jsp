<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bank Dashboard</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

/* Global Styles */
body {
  font-family: 'Roboto', sans-serif;
  margin: 0;
  padding: 0;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(135deg, #d6e5f7, #f7f3ff);
  background-image: url('https://images.unsplash.com/photo-1605902711622-cfb43c443b0f?auto=format&fit=crop&w=1470&q=80');
  background-size: cover;
  background-blend-mode: overlay;
  background-repeat: no-repeat;
  background-position: center;
}

/* Dashboard Container */
.dashboard-container {
  background: rgba(255, 255, 255, 0.9);
  backdrop-filter: blur(10px);
  border-radius: 18px;
  padding: 50px 40px;
  width: 400px;
  text-align: center;
  box-shadow: 0 20px 40px rgba(0,0,0,0.1);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.dashboard-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 25px 60px rgba(0,0,0,0.15);
}

/* Header */
h2 {
  font-size: 28px;
  font-weight: 700;
  color: #1e2a38;
  margin-bottom: 40px;
}

/* Menu List */
.dashboard-menu {
  list-style: none;
  padding: 0;
  margin: 0;
}

.dashboard-menu li {
  margin: 15px 0;
}

/* Buttons with pastel colors */
.dashboard-menu a {
  display: block;
  padding: 14px 0;
  border-radius: 12px;
  text-decoration: none;
  font-weight: 500;
  color: #1e2a38;
  background: #a8dadc; /* pastel teal */
  box-shadow: 0 6px 20px rgba(0,0,0,0.08);
  transition: all 0.3s ease;
  letter-spacing: 0.5px;
}

.dashboard-menu a:hover {
  transform: translateY(-3px);
  box-shadow: 0 10px 25px rgba(0,0,0,0.12);
  background: #89c2d9; /* darker pastel on hover */
}

/* Logout Button */
.logout-btn {
  background: #fcbf49; /* pastel orange */
}

.logout-btn:hover {
  background: #f9a03f;
  transform: translateY(-3px);
  box-shadow: 0 10px 25px rgba(0,0,0,0.12);
}

/* Smooth fade-in animation */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-20px); }
  to { opacity: 1; transform: translateY(0); }
}

.dashboard-container {
  animation: fadeIn 0.6s ease forwards;
}

/* Optional: Add subtle shadow to body elements for realism */
.dashboard-menu a::after {
  content: '';
  display: block;
  height: 4px;
  width: 0%;
  background: rgba(0,0,0,0.1);
  border-radius: 2px;
  margin: 4px auto 0 auto;
  transition: width 0.3s ease;
}

.dashboard-menu a:hover::after {
  width: 60%;
}
</style>
</head>
<body>

<div class="dashboard-container">
  <h2>Welcome, User!</h2>

  <ul class="dashboard-menu">
    <li><a href="account.jsp">View Account</a></li>
    <li><a href="bankTransfer.jsp">Transfer Money</a></li>
    <li><a href="checkBalance.jsp">Check Balance</a></li>
    <li><a href="DisplayTransaction">Transaction History</a></li>
    <li><a href="deposit">Deposit</a></li>
    <li><a href="withdraw">Withdraw</a></li>
    <li><a href="updatePIN">Update PIN</a></li>
    <li><a href="updateAccountDetails">Update Account Details</a></li>
    <li><a href="logout.jsp" class="logout-btn">Logout</a></li>
  </ul>
</div>

</body>
</html>
