<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Account Details</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap');

/* --- Base Layout --- */
body {
  font-family: 'Poppins', sans-serif;
  background: linear-gradient(135deg, #eef2f3 0%, #ffffff 100%);
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
}

/* --- Card Container --- */
.form-container {
  background: #ffffff;
  padding: 40px 45px;
  border-radius: 16px;
  box-shadow: 0 10px 25px rgba(0,0,0,0.12);
  width: 420px;
  text-align: left;
  animation: fadeIn 0.8s ease-in-out;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.form-container:hover {
  transform: translateY(-3px);
  box-shadow: 0 14px 30px rgba(0,0,0,0.15);
}

/* --- Title --- */
h2 {
  text-align: center;
  color: #0072ff;
  margin-bottom: 25px;
  font-weight: 600;
  font-size: 26px;
  letter-spacing: 0.5px;
}

/* --- Labels --- */
label {
  font-weight: 500;
  margin-bottom: 6px;
  display: block;
  color: #333;
  font-size: 14px;
}

/* --- Inputs --- */
input[type="text"],
input[type="number"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px 12px;
  margin-bottom: 18px;
  border: 1px solid #ccc;
  border-radius: 8px;
  font-size: 15px;
  transition: border-color 0.3s ease, box-shadow 0.3s ease;
  box-sizing: border-box;
}

input[type="text"]:focus,
input[type="number"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
  border-color: #0072ff;
  box-shadow: 0 0 6px rgba(0,114,255,0.4);
  outline: none;
}

/* --- Submit Button --- */
.btn-submit {
  background: linear-gradient(90deg, #007bff, #0056b3);
  color: white;
  font-weight: 600;
  border: none;
  padding: 12px;
  border-radius: 8px;
  width: 100%;
  cursor: pointer;
  font-size: 16px;
  transition: background 0.3s ease, transform 0.2s ease;
}

.btn-submit:hover {
  background: linear-gradient(90deg, #005ecb, #004494);
  transform: translateY(-2px);
}

/* --- Success/Error Message --- */
.message {
  text-align: center;
  color: #2e7d32;
  margin-top: 15px;
  font-weight: 500;
  font-size: 15px;
}

/* --- Back Link --- */
.back-link {
  text-align: center;
  margin-top: 18px;
}

.back-link a {
  text-decoration: none;
  background: linear-gradient(90deg, #4b79a1, #283e51);
  color: white;
  padding: 10px 18px;
  border-radius: 8px;
  font-weight: 600;
  font-size: 14px;
  display: inline-block;
  transition: background 0.3s ease, transform 0.2s ease;
}

.back-link a:hover {
  background: linear-gradient(90deg, #5a91c1, #345066);
  transform: translateY(-2px);
}

/* --- Fade In Animation --- */
@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-20px); }
  to { opacity: 1; transform: translateY(0); }
}

/* --- Responsive Design --- */
@media (max-width: 480px) {
  .form-container {
    width: 90%;
    padding: 30px 25px;
  }
  h2 {
    font-size: 22px;
  }
}
</style>
</head>
<body>
<div class="form-container">
    <h2>Update Account Details</h2>
    <form action="updateAccountDetails" method="post">
        <input type="hidden" name="action" value="updateAccount">

        <label>Account Number</label>
        <input type="text" name="accountNumber" required>

        <label>Holder Name</label>
        <input type="text" name="accountHolderName">

        <label>Balance</label>
        <input type="number" step="0.01" name="balance">

        <label>Account Type</label>
        <input type="text" name="accountType">

        <label>IFSC Code</label>
        <input type="text" name="ifscCode">

        <label>Branch Name</label>
        <input type="text" name="branchName">

        <label>Address</label>
        <input type="text" name="address">

        <label>Phone</label>
        <input type="text" name="phone">

        <label>Email</label>
        <input type="email" name="email">

        <label>PIN</label>
        <input type="password" name="pin">

        <input type="submit" value="Update Account" class="btn-submit">
    </form>

    <p class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </p>
    <p class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </p>
</div>
</body>
</html>
