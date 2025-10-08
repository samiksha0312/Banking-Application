<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Logout - My Bank</title>
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
    background: linear-gradient(120deg, #d0e8f2, #f3f7e8);
    overflow: hidden;
    position: relative;
}

body::before {
    content: "";
    position: absolute;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: url('https://images.unsplash.com/photo-1567427018141-0584cfcbf1a4?auto=format&fit=crop&w=1470&q=80') no-repeat center center;
    background-size: cover;
    opacity: 0.08;
    z-index: 0;
}

.logout-container {
    position: relative;
    z-index: 1;
    background: rgba(255,255,255,0.95);
    backdrop-filter: blur(10px);
    padding: 40px 50px;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.15);
    width: 400px;
    text-align: center;
    animation: fadeIn 0.8s ease forwards;
}

.logout-container h2 {
    color: #28a745;
    font-size: 28px;
    font-weight: 700;
    margin-bottom: 15px;
}

.logout-container p {
    color: #555;
    font-size: 16px;
    margin-bottom: 25px;
}

.back-link a {
    display: inline-block;
    background: linear-gradient(135deg, #81d4fa, #4fc3f7);
    color: white;
    text-decoration: none;
    padding: 12px 25px;
    border-radius: 12px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.back-link a:hover {
    background: linear-gradient(135deg, #4fc3f7, #29b6f6);
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

@keyframes fadeIn {
    from {opacity: 0; transform: translateY(-30px);}
    to {opacity: 1; transform: translateY(0);}
}
</style>
</head>
<body>

<div class="logout-container">
  <h2>You have been logged out</h2>
  <p>Thank you for using our banking services.</p>

  <p class="back-link">
    <a href="index.jsp">Login Again</a>
  </p>
</div>

</body>
</html>
