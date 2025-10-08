package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import util.DBConnection;

@WebServlet("/updatePIN")
public class updatePIN extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("updatePIN.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String accountNumber = request.getParameter("accountNumber");
        String oldPin = request.getParameter("oldPin");
        String newPin = request.getParameter("newPin");

        if (accountNumber == null || oldPin == null || newPin == null ||
            accountNumber.isEmpty() || oldPin.isEmpty() || newPin.isEmpty()) {
            out.println("<h3 style='color:red;'>Please fill all fields!</h3>");
            return;
        }

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmtCheck = conn.prepareStatement("SELECT pin FROM bank_accounts WHERE accountNumber = ?")) {

            pstmtCheck.setString(1, accountNumber);
            ResultSet rs = pstmtCheck.executeQuery();

            if (!rs.next()) {
                out.println("<h3 style='color:red;'>Account not found!</h3>");
            } else {
                String currentPin = rs.getString("pin");
                if (!currentPin.equals(oldPin)) {
                    out.println("<h3 style='color:red;'>Old PIN is incorrect!</h3>");
                } else {
                    try (PreparedStatement pstmtUpdate = conn.prepareStatement(
                            "UPDATE bank_accounts SET pin = ? WHERE accountNumber = ?")) {
                        pstmtUpdate.setString(1, newPin);
                        pstmtUpdate.setString(2, accountNumber);
                        int rows = pstmtUpdate.executeUpdate();
                        if (rows > 0) {
                            out.println("<h3 style='color:green;'>PIN updated successfully!</h3>");
                        } else {
                            out.println("<h3 style='color:red;'>Update failed. Try again.</h3>");
                        }
                    }
                }
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }

        out.println("<br><a href='updatePIN.jsp'>Go Back</a>");
    }
}
