<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Bank</title>
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
    opacity: 0.12;
    z-index: 0;
}

.landing-container {
    position: relative;
    z-index: 1;
    background: rgba(255,255,255,0.95);
    backdrop-filter: blur(10px);
    padding: 60px 80px;
    border-radius: 20px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.15);
    text-align: center;
    max-width: 450px;
    animation: fadeIn 0.8s ease forwards;
}

h1 {
    font-size: 36px;
    color: #1b262c;
    margin-bottom: 15px;
}

p {
    font-size: 18px;
    color: #333;
    margin-bottom: 40px;
}

.btn {
    display: inline-block;
    margin: 10px;
    padding: 15px 35px;
    font-size: 16px;
    background: linear-gradient(135deg, #81d4fa, #4fc3f7);
    color: white;
    text-decoration: none;
    border-radius: 12px;
    font-weight: 500;
    transition: all 0.3s ease;
    box-shadow: 0 8px 20px rgba(0,0,0,0.12);
}

.btn:hover {
    background: linear-gradient(135deg, #4fc3f7, #29b6f6);
    transform: translateY(-3px);
    box-shadow: 0 12px 25px rgba(0,0,0,0.2);
}

@keyframes fadeIn {
    from {opacity: 0; transform: translateY(-30px);}
    to {opacity: 1; transform: translateY(0);}
}
</style>
</head>
<body>

<div class="landing-container">
    <h1>Welcome to My Bank</h1>
    <p>Secure & Modern Banking Web Application</p>
    <a class="btn" href="login.jsp">Login</a>
    <a class="btn" href="signup.jsp">Create Account</a>
</div>

</body>
</html>
