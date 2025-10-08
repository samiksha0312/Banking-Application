<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login - My Bank</title>
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
    background: linear-gradient(to right, #e0f7fa, #f1f8e9);
    overflow: hidden;
    position: relative;
}

body::before {
    content: "";
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: url('https://images.unsplash.com/photo-1605902711622-cfb43c4437a0?auto=format&fit=crop&w=1470&q=80') no-repeat center center;
    background-size: cover;
    opacity: 0.1;
    z-index: 0;
}

.login-container {
    position: relative;
    z-index: 1;
    background: rgba(255,255,255,0.95);
    backdrop-filter: blur(10px);
    padding: 40px 50px;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.15);
    width: 350px;
    text-align: center;
    animation: fadeIn 0.8s ease forwards;
}

h2 {
    font-size: 32px;
    color: #1b262c;
    margin-bottom: 25px;
}

form p {
    display: flex;
    flex-direction: column;
    margin: 15px 0;
    text-align: left;
}

label {
    margin-bottom: 6px;
    font-weight: 500;
    color: #333;
}

input[type="text"],
input[type="password"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
    outline: none;
    transition: border-color 0.3s;
}

input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #4fc3f7;
    box-shadow: 0 0 8px rgba(79, 195, 247, 0.4);
}

.btn {
    background: linear-gradient(135deg, #81d4fa, #4fc3f7);
    color: white;
    padding: 12px 0;
    border: none;
    border-radius: 12px;
    cursor: pointer;
    font-weight: 500;
    font-size: 16px;
    transition: all 0.3s ease;
    width: 100%;
    margin-top: 15px;
}

.btn:hover {
    background: linear-gradient(135deg, #4fc3f7, #29b6f6);
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

.signup-link {
    margin-top: 20px;
    font-size: 14px;
    color: #555;
}

.signup-link a {
    color: #4fc3f7;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s;
}

.signup-link a:hover {
    color: #0288d1;
    text-decoration: underline;
}

@keyframes fadeIn {
    from {opacity: 0; transform: translateY(-30px);}
    to {opacity: 1; transform: translateY(0);}
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

    <p>
      <input type="submit" value="Login" class="btn">
    </p>
  </form>

  <p class="signup-link">
    Don’t have an account? <a href="signup.jsp">Create New Account</a>
  </p>
</div>

</body>
</html>
