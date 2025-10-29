<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Account</title>
<style>
/* --- Base Page Layout --- */
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background: linear-gradient(135deg, #dfe9f3 0%, #ffffff 100%);
  text-align: center;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  min-height: 100vh;
}

/* --- Title Styling --- */
h2 {
  margin-top: 50px;
  font-size: 30px;
  font-weight: 700;
  color: #333;
  letter-spacing: 1px;
  background: linear-gradient(90deg, #4b79a1, #283e51);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

/* --- Form Container --- */
.form-container {
  background: #ffffff;
  display: inline-block;
  padding: 40px 45px;
  border-radius: 16px;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
  margin-top: 25px;
  text-align: left;
  width: 420px;
  transition: all 0.3s ease;
}

.form-container:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 30px rgba(0, 0, 0, 0.12);
}

/* --- Form Elements --- */
form p {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 14px 0;
}

label {
  flex: 1;
  font-weight: 600;
  margin-right: 10px;
  color: #333;
}

input {
  flex: 2;
  padding: 8px 10px;
  border: 1px solid #ccc;
  border-radius: 6px;
  font-size: 14px;
  transition: border 0.3s, box-shadow 0.3s;
}

input:focus {
  border-color: #4b79a1;
  outline: none;
  box-shadow: 0 0 6px rgba(75, 121, 161, 0.4);
}

/* --- Button Styling --- */
.btn {
  background: linear-gradient(90deg, #4b79a1, #283e51);
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-weight: 600;
  font-size: 15px;
  letter-spacing: 0.5px;
  transition: background 0.3s, transform 0.2s;
}

.btn:hover {
  background: linear-gradient(90deg, #5a91c1, #345066);
  transform: translateY(-2px);
}

/* --- Login Link --- */
.login-link {
  text-align: center;
  margin-top: 18px;
  font-size: 15px;
}

.login-link a {
  color: #4b79a1;
  text-decoration: none;
  font-weight: bold;
  transition: color 0.3s;
}

.login-link a:hover {
  color: #345066;
  text-decoration: underline;
}

/* --- Responsive Design --- */
@media (max-width: 480px) {
  .form-container {
    width: 90%;
    padding: 25px 20px;
  }

  form p {
    flex-direction: column;
    align-items: flex-start;
  }

  label {
    margin-bottom: 6px;
  }

  input {
    width: 100%;
  }
}
</style>
</head>
<body>

<h2>Create Account</h2>

<div class="form-container">
  <form action="CreateAccount" method="post">

    <p><label for="accountNumber">Account Number:</label>
    <input type="text" id="accountNumber" name="accountNumber" required></p>

    <p><label for="accountHolderName">Name:</label>
    <input type="text" id="accountHolderName" name="accountHolderName" required></p>

    <p><label for="balance">Initial Balance:</label>
    <input type="number" id="balance" name="balance" required></p>

    <p><label for="accountType">Account Type:</label>
    <input type="text" id="accountType" name="accountType" required></p>

    <p><label for="ifscCode">IFSC:</label>
    <input type="text" id="ifscCode" name="ifscCode" required></p>

    <p><label for="branchName">Branch:</label>
    <input type="text" id="branchName" name="branchName"></p>

    <p><label for="address">Address:</label>
    <input type="text" id="address" name="address"></p>

    <p><label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone"></p>

    <p><label for="email">Email:</label>
    <input type="email" id="email" name="email"></p>

    <p><label for="pin">PIN:</label>
    <input type="password" id="pin" name="pin" required></p>

    <p style="text-align:center;">
      <input type="submit" value="Create Account" class="btn">
    </p>

  </form>

  <p class="login-link">
    Already have account? <a href="login.jsp">Login</a>
  </p>
</div>

</body>
</html>
