<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bank Transfer</title>
<style>
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background-color: #f0f2f5;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

.transfer-container {
  background-color: #fff;
  padding: 35px 45px;
  border-radius: 12px;
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
  width: 380px;
  text-align: center;
}

h2 {
  color: #333;
  font-size: 26px;
  margin-bottom: 25px;
}

form p {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 12px 0;
  text-align: left;
}

label {
  flex: 1;
  font-weight: bold;
  color: #444;
  margin-right: 10px;
}

input[type="text"],
input[type="password"],
input[type="number"] {
  flex: 2;
  padding: 6px;
  border: 1px solid #ccc;
  border-radius: 6px;
  font-size: 14px;
}

.btn {
  background-color: #007bff;
  color: white;
  padding: 8px 16px;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  font-weight: bold;
  transition: 0.3s;
}

.btn:hover {
  background-color: #0056b3;
  transform: translateY(-2px);
}

.back-link {
  margin-top: 20px;
}

.back-link a {
  text-decoration: none;
  color: #007bff;
  font-weight: bold;
}

.back-link a:hover {
  text-decoration: underline;
}

/* 🌈 Added Pinteresty professional enhancement (without changing existing code) */
body {
  background: linear-gradient(135deg, #f5f7fa, #e2ecf7);
}

.transfer-container {
  background: linear-gradient(145deg, #ffffff, #f9f9f9);
  border: 1px solid #e6e9ef;
  transition: all 0.4s ease;
}

.transfer-container:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.12);
}

h2 {
  background: linear-gradient(90deg, #007bff, #00aaff);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  font-weight: 700;
  letter-spacing: 0.5px;
}

input[type="text"],
input[type="password"],
input[type="number"] {
  border: 1px solid #d0d6e2;
  padding: 8px;
  background: #f9fbff;
  transition: all 0.3s ease;
}

input[type="text"]:focus,
input[type="password"]:focus,
input[type="number"]:focus {
  border-color: #007bff;
  outline: none;
  background-color: #fff;
  box-shadow: 0 0 5px rgba(0,123,255,0.3);
}

.btn {
  background: linear-gradient(90deg, #007bff, #00aaff);
  box-shadow: 0 3px 6px rgba(0,123,255,0.3);
}

.btn:hover {
  background: linear-gradient(90deg, #0056b3, #0080ff);
}

.back-link a {
  color: #007bff;
  font-size: 14px;
  transition: color 0.3s;
}

.back-link a:hover {
  color: #0056b3;
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

    <p style="text-align:center;">
      <input type="submit" value="Transfer" class="btn">
    </p>
  </form>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>
</div>

</body>
</html>
