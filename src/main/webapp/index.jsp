<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Bank</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&family=Nunito:wght@300;400;600;700&display=swap');


body {
  font-family: 'Poppins', 'Nunito', sans-serif;
  margin: 0;
  padding: 0;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: linear-gradient(120deg, #fefafc, #f3f8fb, #e9f4f3);
  background-size: 400% 400%;
  animation: gradientFlow 14s ease infinite;
  overflow: hidden;
  position: relative;
}


.shape {
  position: absolute;
  border-radius: 50%;
  opacity: 0.3;
  filter: blur(60px);
  animation: floaty 10s ease-in-out infinite alternate;
}
.shape.one { width: 220px; height: 220px; background: #fcd1d1; top: 10%; left: 10%; animation-delay: 1s; }
.shape.two { width: 300px; height: 300px; background: #d4f1f4; bottom: 10%; right: 5%; animation-delay: 2.5s; }
.shape.three { width: 180px; height: 180px; background: #f9e0ae; top: 70%; left: 60%; animation-delay: 4s; }

@keyframes floaty {
  0% { transform: translateY(0px) translateX(0px) scale(1); opacity: 0.4; }
  50% { transform: translateY(-30px) translateX(15px) scale(1.05); opacity: 0.6; }
  100% { transform: translateY(0px) translateX(0px) scale(1); opacity: 0.4; }
}

@keyframes gradientFlow {
  0% { background-position: 0% 50%; }
  50% { background-position: 100% 50%; }
  100% { background-position: 0% 50%; }
}

.landing-container {
  position: relative;
  z-index: 2;
  max-width: 500px;
  width: 90%;
  background: rgba(255, 255, 255, 0.55);
  border-radius: 26px;
  padding: 65px 50px;
  box-shadow: 0 20px 45px rgba(0, 0, 0, 0.08);
  backdrop-filter: blur(20px);
  text-align: center;
  animation: fadeIn 1s ease forwards;
}

h1 {
  font-size: 38px;
  color: #164e63;
  font-weight: 700;
  letter-spacing: -0.5px;
  margin-bottom: 10px;
}

h1 span {
  color: #1a8c8e;
}

p {
  font-size: 17px;
  color: #444;
  margin-bottom: 25px;
  line-height: 1.6;
}

.bank-info {
  font-size: 15px;
  color: #555;
  background: rgba(255, 255, 255, 0.55);
  padding: 18px 20px;
  border-radius: 16px;
  line-height: 1.7;
  box-shadow: inset 0 0 12px rgba(255, 255, 255, 0.2),
              0 4px 8px rgba(0,0,0,0.05);
  margin-bottom: 40px;
}

.btn {
  display: inline-block;
  margin: 10px;
  padding: 14px 36px;
  font-size: 16px;
  font-weight: 600;
  color: #fff;
  background: linear-gradient(135deg, #1a8c8e, #9ad1c8);
  border-radius: 14px;
  text-decoration: none;
  transition: all 0.35s ease;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
}
.btn:hover {
  transform: translateY(-3px);
  background: linear-gradient(135deg, #9ad1c8, #1a8c8e);
  box-shadow: 0 12px 28px rgba(0, 0, 0, 0.15);
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(-25px); }
  to { opacity: 1; transform: translateY(0); }
}
</style>
</head>
<body>

<div class="shape one"></div>
<div class="shape two"></div>
<div class="shape three"></div>

<div class="landing-container">
  <h1>Welcome to <span>My Bank</span></h1>
  <p>Secure & Modern Banking Web Application</p>

  <div class="bank-info">
    <strong>My Bank</strong> offers a redefined way to manage your finances — blending technology, trust, and transparency.
    Enjoy smooth digital experiences, real-time insights, and top-tier encryption for all your transactions.
    <br><br>
    Whether you’re saving, investing, or managing daily expenses, My Bank ensures simplicity with a touch of elegance.
  </div>

  <a class="btn" href="login.jsp">Login</a>
  <a class="btn" href="signup.jsp">Create Account</a>
</div>

</body>
</html>
