<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit Money</title>
<style>
    /* General body styling */
    body {
        font-family: "Poppins", "Segoe UI", sans-serif;
        background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* Card container */
    .card {
        background-color: #fff;
        padding: 40px 45px;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        width: 380px;
        transition: all 0.3s ease;
        position: relative;
    }

    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
        font-weight: 600;
        letter-spacing: 0.5px;
    }

    /* Labels and input fields */
    label {
        display: block;
        margin-bottom: 6px;
        font-weight: 500;
        color: #555;
        font-size: 14px;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 12px 14px;
        margin-bottom: 22px;
        border: 1px solid #ddd;
        border-radius: 10px;
        font-size: 15px;
        box-sizing: border-box;
        background-color: #fafafa;
        transition: all 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #a1c4fd;
        background-color: #fff;
        outline: none;
        box-shadow: 0 0 8px rgba(161, 196, 253, 0.4);
    }

    /* Submit button */
    input[type="submit"] {
        width: 100%;
        padding: 14px;
        background: linear-gradient(135deg, #a1c4fd 0%, #c2e9fb 100%);
        border: none;
        border-radius: 10px;
        color: #fff;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        letter-spacing: 0.5px;
        transition: all 0.3s ease;
    }

    input[type="submit"]:hover {
        background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
        transform: translateY(-2px);
    }

    /* Back link styling */
    .back-link {
        text-align: center;
        margin-top: 18px;
    }

    .back-link a {
        text-decoration: none;
        color: #777;
        font-size: 14px;
        transition: color 0.3s ease;
    }

    .back-link a:hover {
        color: #333;
    }

    /* Soft animated background dots (Pinterest aesthetic) */
    body::before {
        content: "";
        position: absolute;
        width: 250px;
        height: 250px;
        background: rgba(161, 196, 253, 0.2);
        border-radius: 50%;
        top: 10%;
        left: 15%;
        z-index: -1;
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
        z-index: -1;
        filter: blur(70px);
        animation: float 12s infinite ease-in-out alternate-reverse;
    }

    @keyframes float {
        from { transform: translateY(0px); }
        to { transform: translateY(20px); }
    }
</style>

</head>
<body>
    <div class="card">
        <h2>Deposit Money</h2>
        <form action="deposit" method="post">
            <input type="hidden" name="action" value="deposit">
            <label>Account Number:</label>
            <input type="text" name="accountNumber" required>
            <label>Amount:</label>
            <input type="number" step="0.01" name="amount" required>
            <input type="submit" value="Deposit">
        </form>
        <p class="back-link">
            <a href="dashboard.jsp">⬅ Back to Dashboard</a>
        </p>
    </div>
</body>
</html>
