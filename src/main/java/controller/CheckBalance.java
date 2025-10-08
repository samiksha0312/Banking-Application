package controller;


import service.BankingService;
import service.BankingServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/CheckBalance")
public class CheckBalance extends HttpServlet {
    private BankingService service = new BankingServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long accNo = Long.parseLong(req.getParameter("accountNumber"));
        String pin = req.getParameter("pin");

        double balance = service.getBalance(accNo, pin);
        if(balance >= 0){
            req.setAttribute("balance", balance);
            req.getRequestDispatcher("checkBalannce.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("checkBalannce.jsp?error=invalid");
        }
    }
}
