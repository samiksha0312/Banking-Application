<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update PIN</title>
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

        form {
            background-color: #ffffff;
            padding: 40px 45px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 360px;
            text-align: left;
            animation: fadeIn 0.8s ease-in-out;
        }

        h2 {
            color: #007bff;
            text-align: center;
            font-size: 26px;
            margin-bottom: 25px;
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
        input[type="password"] {
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
        input[type="password"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.4);
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background: linear-gradient(135deg, #007bff, #0056b3);
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
            background: linear-gradient(135deg, #005ecb, #003f8a);
            transform: translateY(-2px);
        }

        .message {
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
            font-size: 14px;
            color: green;
        }

        .error {
            color: red;
            text-align: center;
            font-weight: 500;
            margin-top: 10px;
        }

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
            text-decoration: underline;
            color: #0056b3;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
<form action="updatePIN" method="post">
    <h2>Update PIN</h2>
    <input type="hidden" name="action" value="updatePin">

    <label>Account Number:</label>
    <input type="text" name="accountNumber" required><br>

    <label>New PIN:</label>
    <input type="password" name="newPin" required><br>

    <input type="submit" value="Update">

    <div class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </div>

    <p class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </p>
</form>
</body>
</html>
