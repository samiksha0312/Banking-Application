<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>
<style>
/* --- Base Page Layout --- */
body {
	font-family: "Segoe UI", Arial, sans-serif;
	background: linear-gradient(135deg, #dfe9f3 0%, #ffffff 100%);
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
	padding: 0;
	text-align: center;
}

/* --- Success Message Container --- */
.success-message {
	background: #ffffff;
	padding: 40px 50px;
	border-radius: 16px;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
	display: inline-block;
	border-top: 6px solid #28a745;
	transition: all 0.3s ease;
}

.success-message:hover {
	transform: translateY(-3px);
	box-shadow: 0 12px 30px rgba(0, 0, 0, 0.12);
}

/* --- Header Styling --- */
.success-message h2 {
	color: #28a745;
	font-size: 26px;
	font-weight: 700;
	margin-bottom: 15px;
}

/* --- Text Styling --- */
.success-message p {
	color: #333;
	font-size: 16px;
	margin-bottom: 20px;
}

/* --- Link Styling --- */
a {
	background: linear-gradient(90deg, #4b79a1, #283e51);
	color: #fff;
	text-decoration: none;
	padding: 10px 20px;
	border-radius: 8px;
	font-weight: 600;
	transition: background 0.3s, transform 0.2s;
	display: inline-block;
}

a:hover {
	background: linear-gradient(90deg, #5a91c1, #345066);
	transform: translateY(-2px);
}

/* --- Responsive Design --- */
@media (max-width: 480px) {
	.success-message {
		width: 90%;
		padding: 30px 20px;
	}
	.success-message h2 {
		font-size: 22px;
	}
	.success-message p {
		font-size: 15px;
	}
}
</style>
</head>
<body>
	<div class="success-message">
		<h2>Registration Successful!</h2>
		<p>Your account has been created successfully.</p>
		<p>
			<a href="login.jsp">Click here to login</a>
		</p>
	</div>
</body>
</html>
