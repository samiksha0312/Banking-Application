<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Successful</title>
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
    background: linear-gradient(135deg, #f0f4f8, #e3f2fd);
}

.success-container {
    position: relative;
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(10px);
    padding: 40px 50px;
    border-radius: 20px;
    box-shadow: 0 15px 50px rgba(0, 0, 0, 0.15);
    text-align: center;
    max-width: 400px;
    width: 90%;
    animation: fadeIn 0.8s ease forwards;
}

.success-container h2 {
    font-size: 28px;
    color: #28a745;
    margin-bottom: 15px;
}

.success-container p {
    color: #333;
    font-size: 16px;
    margin-bottom: 15px;
}

.success-container a {
    display: inline-block;
    background: linear-gradient(135deg, #4fc3f7, #81d4fa);
    color: white;
    padding: 12px 25px;
    border-radius: 12px;
    font-weight: 500;
    text-decoration: none;
    transition: all 0.3s ease;
}

.success-container a:hover {
    background: linear-gradient(135deg, #29b6f6, #4fc3f7);
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

@keyframes fadeIn {
    from {opacity: 0; transform: translateY(-30px);}
    to {opacity: 1; transform: translateY(0);}
}

/* Responsive adjustments */
@media (max-width: 480px) {
    .success-container {
        padding: 30px 20px;
    }

    .success-container h2 {
        font-size: 24px;
    }

    .success-container a {
        padding: 10px 20px;
        font-size: 14px;
    }
}
</style>
</head>
<body>

<div class="success-container">
    <h2>🎉 Registration Successful!</h2>
    <p>Your account has been created successfully.</p>
    <a href="login.jsp">Click here to login</a>
</div>

</body>
</html>
