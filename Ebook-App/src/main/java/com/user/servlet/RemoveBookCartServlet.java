package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

@WebServlet("/remove_book")
public class RemoveBookCartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
			boolean f = dao.deleteBook(bid, uid);
			
			HttpSession session = req.getSession();
			
			if(f) {
				session.setAttribute("sucMsg", "Removed book from cart");
				resp.sendRedirect("checkout.jsp");
			}
			else {
				session.setAttribute("failed", "fail to Remove book from cart");
				resp.sendRedirect("checkout.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
