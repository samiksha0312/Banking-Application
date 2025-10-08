<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Check Balance</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

body {
  font-family: 'Roboto', sans-serif;
  margin: 0;
  padding: 0;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: url('https://images.unsplash.com/photo-1581092795360-06aa4d4b9c8c?auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
  background-size: cover;
  position: relative;
}

/* Overlay for softer look */
body::before {
  content: "";
  position: absolute;
  top: 0; left: 0;
  width: 100%; height: 100%;
  background: rgba(240, 242, 245, 0.6);
  z-index: 0;
}

/* Container */
.balance-container {
  position: relative;
  z-index: 1;
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(12px);
  padding: 45px 50px;
  border-radius: 18px;
  width: 380px;
  text-align: center;
  box-shadow: 0 20px 50px rgba(0,0,0,0.15);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.balance-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 25px 60px rgba(0,0,0,0.2);
}

/* Header */
h2 {
  font-size: 28px;
  font-weight: 700;
  color: #1e2a38;
  margin-bottom: 35px;
  letter-spacing: 1px;
}

/* Form */
form p {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 15px 0;
}

label {
  flex: 1;
  font-weight: 500;
  color: #1e2a38;
  margin-right: 10px;
  font-size: 15px;
}

input[type="text"],
input[type="password"] {
  flex: 2;
  padding: 8px 10px;
  border-radius: 10px;
  border: 1px solid #ccc;
  font-size: 15px;
  transition: all 0.3s ease;
}

input[type="text"]:focus,
input[type="password"]:focus {
  border-color: #a8dadc;
  box-shadow: 0 0 8px rgba(168, 218, 220, 0.4);
  outline: none;
}

/* Button */
.btn {
  display: inline-block;
  background: #a8dadc; /* pastel teal */
  color: #1e2a38;
  padding: 12px 20px;
  border: none;
  border-radius: 12px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  width: 100%;
  font-size: 16px;
}

.btn:hover {
  background: #89c9c9;
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.12);
}

/* Balance Result Box */
.balance-result {
  background-color: rgba(168, 218, 220, 0.2);
  border: 1px solid #a8dadc;
  border-radius: 12px;
  padding: 18px;
  margin-top: 25px;
  text-align: center;
  transition: all 0.3s ease;
}

.balance-result h3 {
  color: #1e2a38;
  font-size: 24px;
  font-weight: bold;
  margin: 5px 0 0 0;
}

.balance-result p {
  font-size: 16px;
  color: #1e2a38;
  margin: 0;
}

/* Back link */
.back-link {
  margin-top: 25px;
}

.back-link a {
  text-decoration: none;
  color: #007bff;
  font-weight: 500;
  transition: 0.3s ease;
}

.back-link a:hover {
  text-decoration: underline;
  color: #0056b3;
}

/* Fade-in Animation */
@keyframes fadeIn {
  from {opacity: 0; transform: translateY(-20px);}
  to {opacity: 1; transform: translateY(0);}
}

.balance-container {
  animation: fadeIn 0.6s ease forwards;
}
</style>
</head>
<body>

<div class="balance-container">
  <h2>Check Balance</h2>

  <form action="CheckBalance" method="post">
    <p>
      <label for="accountNumber">Account Number:</label>
      <input type="text" id="accountNumber" name="accountNumber" required>
    </p>

    <p>
      <label for="pin">PIN:</label>
      <input type="password" id="pin" name="pin" required>
    </p>

    <p>
      <input type="submit" value="Check Balance" class="btn">
    </p>
  </form>

  <% if (request.getAttribute("balance") != null) { %>
  <div class="balance-result">
    <p>Your Current Balance:</p>
    <h3>₹ <%= request.getAttribute("balance") %></h3>
  </div>
  <% } %>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>
</div>

</body>
</html>
