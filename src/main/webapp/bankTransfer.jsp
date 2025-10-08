<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bank Transfer</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

/* Global Body */
body {
  font-family: 'Roboto', sans-serif;
  margin: 0;
  padding: 0;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(135deg, #e0f7fa, #f3e5f5);
  background-image: url('https://images.unsplash.com/photo-1591696205602-869c6f5fbd8e?auto=format&fit=crop&w=1470&q=80');
  background-size: cover;
  background-blend-mode: overlay;
  background-repeat: no-repeat;
  background-position: center;
}

/* Container */
.transfer-container {
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(10px);
  padding: 45px 50px;
  border-radius: 18px;
  width: 400px;
  text-align: center;
  box-shadow: 0 20px 40px rgba(0,0,0,0.12);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.transfer-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 25px 60px rgba(0,0,0,0.18);
}

/* Header */
h2 {
  font-size: 28px;
  font-weight: 700;
  color: #1e2a38;
  margin-bottom: 35px;
  letter-spacing: 1px;
}

/* Form Elements */
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
input[type="password"],
input[type="number"] {
  flex: 2;
  padding: 8px 10px;
  border-radius: 10px;
  border: 1px solid #ccc;
  font-size: 15px;
  transition: all 0.3s ease;
}

input[type="text"]:focus,
input[type="password"]:focus,
input[type="number"]:focus {
  border-color: #89c2d9;
  box-shadow: 0 0 8px rgba(137, 194, 217, 0.4);
  outline: none;
}

/* Buttons */
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
  background: #89c2d9;
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.12);
}

/* Back Link */
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

.transfer-container {
  animation: fadeIn 0.6s ease forwards;
}
</style>
</head>
<body>

<div class="transfer-container">
  <h2>Transfer Money</h2>

  <form action="BankTransfer" method="post">
    <p>
      <label for="fromAcc">From Account:</label>
      <input type="text" id="fromAcc" name="fromAcc" required>
    </p>

    <p>
      <label for="pin">PIN:</label>
      <input type="password" id="pin" name="pin" required>
    </p>

    <p>
      <label for="toAcc">To Account:</label>
      <input type="text" id="toAcc" name="toAcc" required>
    </p>

    <p>
      <label for="amount">Amount:</label>
      <input type="number" id="amount" name="amount" required>
    </p>

    <p>
      <input type="submit" value="Transfer" class="btn">
    </p>
  </form>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>
</div>

</body>
</html>
