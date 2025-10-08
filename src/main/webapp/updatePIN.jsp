<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update PIN</title>
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

.updatepin-container {
    background-color: #ffffffcc;
    padding: 35px 45px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.1);
    width: 350px;
    text-align: center;
}

h2 {
    color: #007BFF;
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
input[type="password"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 14px;
    transition: 0.3s;
}

input[type="text"]:focus,
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
    .updatepin-container {
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

<div class="updatepin-container">
    <h2>Update PIN</h2>
    <form action="" method="post">
        <p>
            <label for="accountNumber">Account Number:</label>
            <input type="text" name="accountNumber" id="accountNumber" required>
        </p>

        <p>
            <label for="newPin">New PIN:</label>
            <input type="password" name="newPin" id="newPin" required>
        </p>

        <input type="submit" value="Update PIN">
    </form>
</div>

</body>
</html>
