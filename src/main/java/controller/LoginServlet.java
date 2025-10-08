package controller;



import dto.BankAccount;
import service.BankingService;
import service.BankingServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private BankingService service = new BankingServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long accNo = Long.parseLong(req.getParameter("accountNumber"));
        String pin = req.getParameter("pin");

        double balance = service.getBalance(accNo, pin);
        if(balance >= 0){
            BankAccount account = service.getBankAccountDetails(accNo);
            HttpSession session = req.getSession();
            session.setAttribute("account", account);
            resp.sendRedirect("dashboard.jsp");
        } else {
            resp.sendRedirect("login.jsp?error=invalid");
        }
    }
}

