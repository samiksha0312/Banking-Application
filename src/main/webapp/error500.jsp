<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Error</title>
<style>
/* --- General Page Styling --- */
body {
  font-family: "Poppins", "Segoe UI", Arial, sans-serif;
  background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
  overflow: hidden;
  position: relative;
}

/* --- Card Container --- */
.error-container {
  background-color: #ffffff;
  padding: 50px 55px;
  border-radius: 20px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
  text-align: center;
  width: 400px;
  transition: all 0.3s ease;
  position: relative;
  z-index: 1;
}

.error-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
}

/* --- Headings --- */
.error-container h2 {
  color: #ff6b6b;
  font-size: 26px;
  margin-bottom: 15px;
  font-weight: 600;
  letter-spacing: 0.5px;
}

/* --- Text --- */
.error-container p {
  color: #555;
  font-size: 16px;
  margin-bottom: 22px;
  line-height: 1.5;
}

/* --- Button / Back Link --- */
.back-link a {
  background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
  color: #fff;
  text-decoration: none;
  padding: 10px 20px;
  border-radius: 10px;
  font-weight: 600;
  font-size: 15px;
  display: inline-block;
  transition: all 0.3s ease;
  letter-spacing: 0.4px;
}

.back-link a:hover {
  background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
  transform: translateY(-3px);
}

/* --- Decorative Background Glows --- */
body::before {
  content: "";
  position: absolute;
  width: 250px;
  height: 250px;
  background: rgba(255, 107, 107, 0.2);
  border-radius: 50%;
  top: 10%;
  left: 15%;
  z-index: 0;
  filter: blur(60px);
  animation: float 10s infinite ease-in-out alternate;
}

body::after {
  content: "";
  position: absolute;
  width: 200px;
  height: 200px;
  background: rgba(194, 233, 251, 0.25);
  border-radius: 50%;
  bottom: 10%;
  right: 20%;
  z-index: 0;
  filter: blur(70px);
  animation: float 12s infinite ease-in-out alternate-reverse;
}

/* --- Floating Animation --- */
@keyframes float {
  from { transform: translateY(0px); }
  to { transform: translateY(20px); }
}
</style>
</head>
<body>

<div class="error-container">
  <h2>⚠️ Something went wrong!</h2>
  <p>Please try again later or contact support.</p>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>
</div>

</body>
</html>
