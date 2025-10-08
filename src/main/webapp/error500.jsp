<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Error</title>
<style >
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background-color: #f0f2f5;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  margin: 0;
}

/* --- Error Page Styling --- */
.error-container {
  background-color: #fff;
  padding: 40px 50px;
  border-radius: 12px;
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
  text-align: center;
  width: 380px;
}

.error-container h2 {
  color: #d9534f;
  font-size: 26px;
  margin-bottom: 15px;
}

.error-container p {
  color: #444;
  font-size: 16px;
  margin-bottom: 20px;
}

.back-link a {
  background-color: #007bff;
  color: white;
  text-decoration: none;
  padding: 8px 16px;
  border-radius: 6px;
  font-weight: bold;
  transition: 0.3s;
}

.back-link a:hover {
  background-color: #0056b3;
  transform: translateY(-2px);
}

</style>
</head>
<body>

<div class="error-container">
  <h2>Something went wrong!</h2>
  <p>Please try again later or contact support.</p>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>
</div>

</body>
</html>
