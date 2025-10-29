package controller;

import dao.BankAccountDao;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/withdraw")
public class Withdraw extends HttpServlet {
    private BankAccountDao bankDAO;
    @Override
    public void init() {
        bankDAO = new BankAccountDao();
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accountNumber = request.getParameter("accountNumber");
        String amountStr = request.getParameter("amount");
        double amount = Double.parseDouble(amountStr);
        boolean success = bankDAO.withdraw(accountNumber, amount);
        if (success) {
            request.setAttribute("message", "Withdrawal successful!");
        } else {
            request.setAttribute("message", "Insufficient balance or account not found!");
        }
        RequestDispatcher rd = request.getRequestDispatcher("withdraw.jsp");
        rd.forward(request, response);
    }
}