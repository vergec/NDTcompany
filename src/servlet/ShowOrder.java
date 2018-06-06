package servlet;

import DAO.OrderDAO;
import JavaBean.OrderBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class ShowOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderDAO dao = new OrderDAO();
        ArrayList<OrderBean> res=dao.selectAllOrder();
        HttpSession session = request.getSession();
        session.setAttribute("res",res);
        response.sendRedirect("user/showOrder.jsp?page=0");
    }
}
