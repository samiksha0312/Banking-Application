<%@ page import="java.util.List"%>
<%@ page import="dto.Transaction"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Transaction History</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

body {
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background: linear-gradient(135deg, #e3f2fd, #f0f4f8);
    display: flex;
    flex-direction: column;
    align-items: center;
}

h2 {
    text-align: center;
    margin-top: 30px;
    color: #007BFF;
    font-size: 28px;
}

table {
    border-collapse: collapse;
    width: 90%;
    max-width: 1000px;
    margin: 30px 0;
    background-color: #ffffffcc;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 8px 25px rgba(0,0,0,0.1);
}

th, td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

th {
    background: linear-gradient(135deg, #4fc3f7, #81d4fa);
    color: #fff;
    font-weight: 600;
    letter-spacing: 0.5px;
}

tr:hover {
    background-color: #f1f7ff;
    transition: 0.3s;
}

td {
    color: #333;
    font-weight: 400;
}

.no-data {
    text-align: center;
    font-size: 16px;
    color: #555;
    padding: 15px 0;
}

.back-link {
    margin-bottom: 30px;
}

.back-link a {
    display: inline-block;
    background: linear-gradient(135deg, #4fc3f7, #81d4fa);
    color: white;
    padding: 10px 20px;
    border-radius: 12px;
    font-weight: 500;
    text-decoration: none;
    transition: all 0.3s ease;
}

.back-link a:hover {
    background: linear-gradient(135deg, #29b6f6, #4fc3f7);
    transform: translateY(-3px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
}

/* Responsive */
@media (max-width: 768px) {
    table, th, td {
        font-size: 14px;
        padding: 10px;
    }

    h2 {
        font-size: 24px;
    }

    .back-link a {
        padding: 8px 16px;
        font-size: 14px;
    }
}
</style>
</head>
<body>
    <h2>Transaction History</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Type</th>
            <th>Amount</th>
            <th>Date</th>
            <th>From</th>
            <th>To</th>
            <th>Description</th>
        </tr>

        <%
        List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");
        if (transactions != null && !transactions.isEmpty()) {
            for (Transaction t : transactions) {
        %>
        <tr>
            <td><%=t.getTransactionId()%></td>
            <td><%=t.getTransactionType()%></td>
            <td>₹<%=t.getAmount()%></td>
            <td><%=t.getTransactionDate()%></td>
            <td><%=t.getTransactionFrom()%></td>
            <td><%=t.getTransactionTo()%></td>
            <td><%=t.getTransactionDescription()%></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr class="no-data">
            <td colspan="7">No transactions found</td>
        </tr>
        <%
        }
        %>
    </table>

    <div class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </div>
</body>
</html>
