<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Account - My Bank</title>
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
    background: linear-gradient(135deg, #e0f7fa, #f1f8e9);
    overflow: hidden;
    position: relative;
}

body::before {
    content: "";
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: url('https://images.unsplash.com/photo-1581091870623-6327d7e0bb10?auto=format&fit=crop&w=1470&q=80') no-repeat center center;
    background-size: cover;
    opacity: 0.08;
    z-index: 0;
}

.form-container {
    position: relative;
    z-index: 1;
    background: rgba(255,255,255,0.95);
    backdrop-filter: blur(10px);
    padding: 40px 50px;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.15);
    width: 420px;
    text-align: center;
    animation: fadeIn 0.8s ease forwards;
}

h2 {
    font-size: 28px;
    font-weight: 700;
    color: #00796b;
    margin-bottom: 25px;
}

form p {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin: 12px 0;
}

label {
    flex: 1;
    font-weight: 500;
    color: #555;
    margin-right: 10px;
}

input[type="text"],
input[type="number"],
input[type="email"],
input[type="password"] {
    flex: 2;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 14px;
    transition: all 0.3s ease;
}

input[type="text"]:focus,
input[type="number"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    border-color: #00796b;
    box-shadow: 0 0 8px rgba(0,121,107,0.2);
    outline: none;
}

.btn {
    background: linear-gradient(135deg, #4fc3f7, #81d4fa);
    color: white;
    padding: 12px 25px;
    border: none;
    border-radius: 12px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
}

.btn:hover {
    background: linear-gradient(135deg, #29b6f6, #4fc3f7);
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

.login-link {
    margin-top: 20px;
}

.login-link a {
    color: #00796b;
    font-weight: bold;
    text-decoration: none;
    transition: 0.3s;
}

.login-link a:hover {
    color: #004d40;
    text-decoration: underline;
}

@keyframes fadeIn {
    from {opacity: 0; transform: translateY(-30px);}
    to {opacity: 1; transform: translateY(0);}
}
</style>
</head>
<body>

<div class="form-container">
  <h2>Create Account</h2>

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
    Already have an account? <a href="login.jsp">Login</a>
  </p>
</div>

</body>
</html>
