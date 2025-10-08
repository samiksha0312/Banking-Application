<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Account Details</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

body {
    font-family: 'Roboto', sans-serif;
    background: linear-gradient(135deg, #e0f7fa, #f1f8e9);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
}

.update-container {
    background-color: #ffffffcc;
    padding: 40px 50px;
    border-radius: 12px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
    width: 400px;
}

h2 {
    text-align: center;
    color: #007BFF;
    font-size: 26px;
    margin-bottom: 25px;
}

form p {
    display: flex;
    flex-direction: column;
    margin: 12px 0;
}

label {
    font-weight: 500;
    margin-bottom: 5px;
    color: #444;
}

input[type="text"],
input[type="number"],
input[type="email"],
input[type="password"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    transition: 0.3s;
}

input[type="text"]:focus,
input[type="number"]:focus,
input[type="email"]:focus,
input[type="password"]:focus {
    border-color: #007BFF;
    box-shadow: 0 0 5px rgba(0,123,255,0.3);
    outline: none;
}

input[type="submit"] {
    margin-top: 20px;
    background: linear-gradient(135deg, #4fc3f7, #81d4fa);
    color: white;
    padding: 10px;
    border: none;
    border-radius: 8px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
}

input[type="submit"]:hover {
    background: linear-gradient(135deg, #29b6f6, #4fc3f7);
    transform: translateY(-2px);
    box-shadow: 0 6px 18px rgba(0,0,0,0.15);
}

/* Responsive */
@media (max-width: 480px) {
    .update-container {
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

<div class="update-container">
    <h2>Update Account Details</h2>
    <form action="" method="post">
        <p>
            <label for="accountNumber">Account Number:</label>
            <input type="text" name="accountNumber" id="accountNumber" required>
        </p>

        <p>
            <label for="accountHolderName">Holder Name:</label>
            <input type="text" name="accountHolderName" id="accountHolderName" required>
        </p>

        <p>
            <label for="balance">Balance:</label>
            <input type="number" step="0.01" name="balance" id="balance">
        </p>

        <p>
            <label for="accountType">Account Type:</label>
            <input type="text" name="accountType" id="accountType">
        </p>

        <p>
            <label for="ifscCode">IFSC Code:</label>
            <input type="text" name="ifscCode" id="ifscCode">
        </p>

        <p>
            <label for="branchName">Branch Name:</label>
            <input type="text" name="branchName" id="branchName">
        </p>

        <p>
            <label for="address">Address:</label>
            <input type="text" name="address" id="address">
        </p>

        <p>
            <label for="phone">Phone:</label>
            <input type="text" name="phone" id="phone">
        </p>

        <p>
            <label for="email">Email:</label>
            <input type="email" name="email" id="email">
        </p>

        <p>
            <label for="pin">PIN:</label>
            <input type="password" name="pin" id="pin" required>
        </p>

        <input type="submit" value="Update Account">
    </form>
</div>

</body>
</html>
