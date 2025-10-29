<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
/* --- Page Background --- */
body {
  font-family: "Poppins", "Segoe UI", Arial, sans-serif;
  background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  position: relative;
  overflow: hidden;
}

/* --- Decorative Pastel Glows --- */
body::before {
  content: "";
  position: absolute;
  width: 250px;
  height: 250px;
  background: rgba(162, 210, 255, 0.25);
  border-radius: 50%;
  top: 10%;
  left: 15%;
  z-index: 0;
  filter: blur(70px);
  animation: float 10s infinite ease-in-out alternate;
}

body::after {
  content: "";
  position: absolute;
  width: 220px;
  height: 220px;
  background: rgba(255, 182, 193, 0.25);
  border-radius: 50%;
  bottom: 10%;
  right: 20%;
  z-index: 0;
  filter: blur(70px);
  animation: float 12s infinite ease-in-out alternate-reverse;
}

/* --- Card Container --- */
.login-container {
  background-color: #ffffff;
  padding: 40px 50px;
  border-radius: 18px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
  width: 360px;
  text-align: center;
  position: relative;
  z-index: 1;
  transition: all 0.3s ease;
}

.login-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
}

/* --- Heading --- */
h2 {
  font-size: 30px;
  font-weight: 600;
  color: #333;
  margin-bottom: 25px;
  letter-spacing: 0.5px;
}

/* --- Form Inputs --- */
form p {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 18px 0;
}

label {
  flex: 1;
  text-align: left;
  font-weight: 600;
  color: #444;
  font-size: 14px;
}

input[type="text"],
input[type="password"] {
  flex: 2;
  padding: 10px 12px;
  border: 1px solid #ccc;
  border-radius: 8px;
  font-size: 14px;
  transition: all 0.3s ease;
  background-color: #fafafa;
}

input[type="text"]:focus,
input[type="password"]:focus {
  border-color: #a1c4fd;
  box-shadow: 0 0 6px rgba(161, 196, 253, 0.5);
  outline: none;
}

/* --- Button --- */
.btn {
  background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  font-weight: 600;
  font-size: 15px;
  transition: all 0.3s ease;
  letter-spacing: 0.4px;
}

.btn:hover {
  background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
  transform: translateY(-3px);
}

/* --- Signup Link --- */
.signup-link {
  margin-top: 20px;
  font-size: 14px;
  color: #555;
}

.signup-link a {
  color: #007bff;
  text-decoration: none;
  font-weight: 600;
  transition: 0.3s ease;
}

.signup-link a:hover {
  color: #0056b3;
  text-decoration: underline;
}

/* --- Floating Animation --- */
@keyframes float {
  from { transform: translateY(0px); }
  to { transform: translateY(20px); }
}
</style>
</head>
<body>

<div class="login-container">
  <h2>Login</h2>

  <form action="LoginServlet" method="post">

    <p>
      <label for="accountNumber">Account Number:</label>
      <input type="text" id="accountNumber" name="accountNumber" required>
    </p>

    <p>
      <label for="pin">PIN:</label>
      <input type="password" id="pin" name="pin" required>
    </p>

    <p style="text-align:center;">
      <input type="submit" value="Login" class="btn">
    </p>
  </form>

  <p class="signup-link">
    Don’t have an account? <a href="signup.jsp">Create New Account</a>
  </p>
</div>

</body>
</html>
