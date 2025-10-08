<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Withdraw Money</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

body {
    font-family: 'Roboto', sans-serif;
    background: linear-gradient(135deg, #f0f4f8, #e8f6f3);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
}

.withdraw-container {
    background-color: #ffffffcc;
    padding: 35px 45px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    width: 350px;
    text-align: center;
}

h2 {
    color: #FF6B6B;
    font-size: 26px;
    margin-bottom: 25px;
}

form p {
    display: flex;
    flex-direction: column;
    margin: 15px 0;
}

label {
    font-weight: 500;
    margin-bottom: 6px;
    color: #333;
}

input[type="text"],
input[type="number"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    transition: 0.3s;
}

input[type="text"]:focus,
input[type="number"]:focus {
    border-color: #FF6B6B;
    box-shadow: 0 0 5px rgba(255,107,107,0.3);
    outline: none;
}

input[type="submit"] {
    margin-top: 20px;
    background: linear-gradient(135deg, #ff8a65, #ff7043);
    color: white;
    padding: 10px;
    border: none;
    border-radius: 8px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="submit"]:hover {
    background: linear-gradient(135deg, #ff7043, #ff5722);
    transform: translateY(-2px);
    box-shadow: 0 6px 18px rgba(0,0,0,0.15);
}

/* Responsive */
@media (max-width: 480px) {
    .withdraw-container {
        width: 90%;
        padding: 30px 20px;
    }

    h2 {
        font-size: 22px;
    }
}
</style>
</head>
<body>

<div class="withdraw-container">
    <h2>Withdraw Money</h2>
    <form action="" method="post">
        <p>
            <label for="accountNumber">Account Number:</label>
            <input type="text" name="accountNumber" id="accountNumber" required>
        </p>

        <p>
            <label for="amount">Amount:</label>
            <input type="number" name="amount" id="amount" step="0.01" required>
        </p>

        <input type="submit" value="Withdraw">
    </form>
</div>

</body>
</html>
