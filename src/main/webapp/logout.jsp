<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Logout</title>
<style>
/* --- Page Base Styling --- */
body {
  font-family: "Poppins", "Segoe UI", Arial, sans-serif;
  background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
  position: relative;
  overflow: hidden;
}

/* --- Decorative Floating Pastel Circles --- */
body::before {
  content: "";
  position: absolute;
  width: 250px;
  height: 250px;
  background: rgba(174, 214, 241, 0.3);
  border-radius: 50%;
  top: 10%;
  left: 10%;
  filter: blur(80px);
  animation: float 10s ease-in-out infinite alternate;
}

body::after {
  content: "";
  position: absolute;
  width: 220px;
  height: 220px;
  background: rgba(255, 183, 197, 0.3);
  border-radius: 50%;
  bottom: 10%;
  right: 15%;
  filter: blur(80px);
  animation: float 12s ease-in-out infinite alternate-reverse;
}

/* --- Card Container --- */
.logout-container {
  background-color: #ffffff;
  padding: 45px 55px;
  border-radius: 18px;
  box-shadow: 0 10px 35px rgba(0, 0, 0, 0.08);
  text-align: center;
  width: 400px;
  position: relative;
  z-index: 1;
  transition: all 0.3s ease;
}

.logout-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 40px rgba(0, 0, 0, 0.12);
}

/* --- Header Styling --- */
.logout-container h2 {
  color: #2ecc71;
  font-size: 26px;
  font-weight: 600;
  margin-bottom: 20px;
  letter-spacing: 0.4px;
}

/* --- Paragraph Styling --- */
.logout-container p {
  color: #444;
  font-size: 16px;
  margin-bottom: 25px;
  line-height: 1.6;
}

/* --- Button / Link Styling --- */
.back-link a {
  display: inline-block;
  background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
  color: white;
  text-decoration: none;
  padding: 12px 25px;
  border-radius: 10px;
  font-weight: 600;
  font-size: 15px;
  transition: all 0.3s ease;
  box-shadow: 0 4px 10px rgba(161, 196, 253, 0.4);
}

.back-link a:hover {
  background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(102, 166, 255, 0.45);
}

/* --- Floating Animation --- */
@keyframes float {
  from { transform: translateY(0); }
  to { transform: translateY(25px); }
}
</style>
</head>
<body>

<div class="logout-container">
  <h2>✅ You have been logged out successfully</h2>
  <p>Thank you for using our banking services.</p>

  <p class="back-link">
    <a href="index.jsp">🔐 Click here to Login Again</a>
  </p>
</div>

</body>
</html>
