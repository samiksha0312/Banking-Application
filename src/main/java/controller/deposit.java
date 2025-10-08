package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import util.DBConnection;

@WebServlet("/deposit")
public class deposit extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String accountNumber = request.getParameter("accountNumber");
        String amountStr = request.getParameter("amount");

        if (accountNumber == null || amountStr == null || accountNumber.isEmpty() || amountStr.isEmpty()) {
            out.println("<h3 style='color:red;'>Please fill all fields!</h3>");
            return;
        }

        double amount = Double.parseDouble(amountStr);

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmtCheck = conn.prepareStatement(
                     "SELECT balance FROM bank_accounts WHERE accountNumber = ?")) { // table name fixed

            pstmtCheck.setString(1, accountNumber);
            ResultSet rs = pstmtCheck.executeQuery();

            if (!rs.next()) {
                out.println("<h3 style='color:red;'>Account not found!</h3>");
            } else {
                double currentBalance = rs.getDouble("balance");
                double newBalance = currentBalance + amount;

                try (PreparedStatement pstmtUpdate = conn.prepareStatement(
                        "UPDATE bank_accounts SET balance = ? WHERE accountNumber = ?")) { // table name fixed
                    pstmtUpdate.setDouble(1, newBalance);
                    pstmtUpdate.setString(2, accountNumber);

                    int rows = pstmtUpdate.executeUpdate();
                    if (rows > 0) {
                        out.println("<h3 style='color:green;'>Amount deposited successfully!</h3>");
                        out.println("<p>New Balance: ₹" + newBalance + "</p>");
                    } else {
                        out.println("<h3 style='color:red;'>Deposit failed. Try again.</h3>");
                    }
                }
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }

        out.println("<br><a href='deposit.jsp'>Go Back</a>");
    }

    // Add doGet() to avoid HTTP 405 when accessing via browser
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("deposit.jsp"); // Redirect to form
    }
}
