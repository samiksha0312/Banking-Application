<%@ page import="java.util.List"%>
<%@ page import="dto.Transaction"%>
<html>
<head>
<title>Transaction History</title>
<style>
/* --- Base Layout --- */
body {
  font-family: "Segoe UI", Arial, sans-serif;
  background: linear-gradient(135deg, #eef2f3 0%, #ffffff 100%);
  margin: 0;
  padding: 0;
  text-align: center;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
}

/* --- Header --- */
h2 {
  margin-top: 40px;
  font-size: 30px;
  color: #333;
  font-weight: 700;
  letter-spacing: 0.5px;
}

/* --- Table Container --- */
table {
  border-collapse: collapse;
  width: 85%;
  margin: 25px auto;
  background-color: #fff;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
  border-radius: 12px;
  overflow: hidden;
  transition: all 0.3s ease;
}

table:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 28px rgba(0, 0, 0, 0.12);
}

/* --- Table Header --- */
th {
  background: linear-gradient(90deg, #007bff, #0056b3);
  color: white;
  font-size: 16px;
  font-weight: 600;
  padding: 14px;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

/* --- Table Cells --- */
td {
  border-bottom: 1px solid #ddd;
  padding: 12px 14px;
  font-size: 15px;
  color: #333;
}

/* --- Alternate Row Shading --- */
tr:nth-child(even) {
  background-color: #f9f9f9;
}

/* --- Hover Effect --- */
tr:hover td {
  background-color: #f1f7ff;
  transition: background-color 0.3s ease;
}

/* --- No Transactions Row --- */
td[colspan="7"] {
  color: #999;
  font-style: italic;
  padding: 20px;
}

/* --- Back Link --- */
a {
  display: inline-block;
  margin: 30px auto;
  background: linear-gradient(90deg, #4b79a1, #283e51);
  color: white;
  text-decoration: none;
  padding: 12px 24px;
  border-radius: 8px;
  font-weight: 600;
  transition: background 0.3s, transform 0.2s;
}

a:hover {
  background: linear-gradient(90deg, #5a91c1, #345066);
  transform: translateY(-2px);
}

/* --- Responsive Design --- */
@media (max-width: 768px) {
  table {
    width: 95%;
    font-size: 14px;
  }

  th, td {
    padding: 10px;
  }

  h2 {
    font-size: 24px;
  }

  a {
    padding: 10px 18px;
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
      <td><%=t.getAmount()%></td>
      <td><%=t.getTransactionDate()%></td>
      <td><%=t.getTransactionFrom()%></td>
      <td><%=t.getTransactionTo()%></td>
      <td><%=t.getTransactionDescription()%></td>
    </tr>
    <%
      }
    } else {
    %>
    <tr>
      <td colspan="7">No transactions found</td>
    </tr>
    <%
    }
    %>
  </table>

  <a href="dashboard.jsp">⬅ Back to Dashboard</a>
</body>
</html>
