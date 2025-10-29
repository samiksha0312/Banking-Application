package controller;

import service.BankingService;
import service.BankingServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/BankTransfer")
public class BankTransfer extends HttpServlet {

    private BankingService service = new BankingServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            long fromAcc = Long.parseLong(req.getParameter("fromAcc"));
            long toAcc = Long.parseLong(req.getParameter("toAcc"));
            double amount = Double.parseDouble(req.getParameter("amount"));
            String pin = req.getParameter("pin");

            boolean success = service.transfer(fromAcc, toAcc, amount, pin);

            if (success) {
                resp.sendRedirect("dashboard.jsp?msg=transfer_success");
            } else {
                resp.sendRedirect("bankTransfer.jsp?error=failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("bankTransfer.jsp?error=invalid_input");
        }
    }
}
