package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import util.DBConnection;
import java.sql.*;

@WebServlet("/withdraw")
public class Withdraw extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String accountNumber = request.getParameter("accountNumber");
        String amountStr = request.getParameter("amount");
        String pin = request.getParameter("pin"); // if your form has PIN field

        if (accountNumber == null || amountStr == null || accountNumber.isEmpty() || amountStr.isEmpty()) {
            out.println("<h3 style='color:red;'>Please fill all fields!</h3>");
            return;
        }

        double amount = Double.parseDouble(amountStr);

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmtCheck = conn.prepareStatement(
                     "SELECT balance, pin FROM bank_accounts WHERE accountNumber = ?")) {

            pstmtCheck.setString(1, accountNumber);
            ResultSet rs = pstmtCheck.executeQuery();

            if (!rs.next()) {
                out.println("<h3 style='color:red;'>Account not found!</h3>");
            } else {
                double currentBalance = rs.getDouble("balance");
                String accountPin = rs.getString("pin");

                if (!accountPin.equals(pin)) {
                    out.println("<h3 style='color:red;'>Incorrect PIN!</h3>");
                } else if (currentBalance < amount) {
                    out.println("<h3 style='color:red;'>Insufficient balance!</h3>");
                } else {
                    double newBalance = currentBalance - amount;
                    try (PreparedStatement pstmtUpdate = conn.prepareStatement(
                            "UPDATE bank_accounts SET balance = ? WHERE accountNumber = ?")) {
                        pstmtUpdate.setDouble(1, newBalance);
                        pstmtUpdate.setString(2, accountNumber);

                        int rows = pstmtUpdate.executeUpdate();
                        if (rows > 0) {
                            out.println("<h3 style='color:green;'>Amount withdrawn successfully!</h3>");
                            out.println("<p>New Balance: ₹" + newBalance + "</p>");
                        } else {
                            out.println("<h3 style='color:red;'>Withdraw failed. Try again.</h3>");
                        }
                    }
                }
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }

        out.println("<br><a href='withdraw.jsp'>Go Back</a>");
    }

    // Add this to handle GET requests (to avoid 405 error)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("withdraw.jsp"); // redirect to the withdraw form page
    }
}
