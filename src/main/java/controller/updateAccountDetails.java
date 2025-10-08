package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import util.DBConnection;

@WebServlet("/updateAccountDetails")
public class updateAccountDetails extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("updateAccountDetails.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String accountNumber = request.getParameter("accountNumber");
        String accountHolderName = request.getParameter("accountHolderName");
        String branchName = request.getParameter("branchName");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        if(accountNumber == null || accountHolderName == null) {
            out.println("<h3 style='color:red;'>Account Number and Name are required!</h3>");
            return;
        }

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(
                     "UPDATE bank_accounts SET accountHolderName=?, branchName=?, address=?, phone=?, email=? WHERE accountNumber=?")) {

            pstmt.setString(1, accountHolderName);
            pstmt.setString(2, branchName);
            pstmt.setString(3, address);
            pstmt.setString(4, phone);
            pstmt.setString(5, email);
            pstmt.setString(6, accountNumber);

            int rows = pstmt.executeUpdate();
            if(rows > 0) {
                out.println("<h3 style='color:green;'>Account details updated successfully!</h3>");
            } else {
                out.println("<h3 style='color:red;'>Update failed. Check Account Number.</h3>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }

        out.println("<br><a href='updateAccountDetails.jsp'>Go Back</a>");
    }
}
