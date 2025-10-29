<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw Money</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #e3f2fd, #bbdefb);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.card {
    background-color: #ffffff;
    padding: 40px 45px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    width: 380px;
    animation: fadeIn 0.8s ease-in-out;
}

h2 {
    text-align: center;
    color: #007bff;
    margin-bottom: 25px;
    font-size: 26px;
    font-weight: 600;
}

label {
    display: block;
    margin-bottom: 6px;
    font-weight: 500;
    color: #333;
    font-size: 14px;
}

input[type="text"], 
input[type="number"] {
    width: 100%;
    padding: 10px 12px;
    margin-bottom: 18px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
    transition: all 0.3s ease;
    box-sizing: border-box;
}

input[type="text"]:focus, 
input[type="number"]:focus {
    border-color: #007bff;
    box-shadow: 0 0 6px rgba(0, 123, 255, 0.4);
    outline: none;
}

input[type="submit"] {
    width: 100%;
    background: linear-gradient(135deg, #f44336, #d32f2f);
    color: white;
    padding: 12px 15px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="submit"]:hover {
    background: linear-gradient(135deg, #d32f2f, #b71c1c);
    transform: translateY(-2px);
}

.message {
    text-align: center;
    font-weight: bold;
    margin-bottom: 15px;
    font-size: 14px;
}

.success { color: #28a745; }
.failed { color: #dc3545; }
.invalid { color: #ff9800; }

.back-link {
    text-align: center;
    margin-top: 15px;
}

.back-link a {
    text-decoration: none;
    color: #007bff;
    font-weight: 600;
    font-size: 14px;
    transition: color 0.3s ease;
}

.back-link a:hover {
    color: #0056b3;
    text-decoration: underline;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}
</style>
</head>
<body>
<div class="card">
    <h2>Withdraw Money</h2>

    <% String status = request.getParameter("status"); %>
    <% if ("success".equals(status)) { %>
        <p class="message success">Withdrawal successful!</p>
    <% } else if ("failed".equals(status)) { %>
        <p class="message failed">Withdrawal failed! Insufficient balance or account not found.</p>
    <% } else if ("invalid".equals(status)) { %>
        <p class="message invalid">Invalid input! Please enter numeric values.</p>
    <% } %>

    <form action="withdraw" method="post">
        <label>Account Number:</label>
        <input type="text" name="accountNumber" required>

        <label>Amount:</label>
        <input type="number" step="0.01" name="amount" required>

        <input type="submit" value="Withdraw">
    </form>

    <p class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </p>
</div>
</body>
</html>
