package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Cart;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bid = Integer.parseInt(req.getParameter("bid"));
			int uid = Integer.parseInt(req.getParameter("uid"));
			
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			HttpSession session = req.getSession();
			
			BookDtls b = dao.getBookbyId(bid);
			Cart c = new Cart();
			c.setBid(bid);
			c.setUserId(uid);
			c.setBookname(b.getBookname());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotal_price(Double.parseDouble(b.getPrice()));
			
			CartDAOImpl cart_dao = new CartDAOImpl(DBConnect.getConn());
			boolean f = cart_dao.addCart(c);
			
			if(f)
			{
				session.setAttribute("addCart_Success", "Book added to cart");
				resp.sendRedirect("all_new_books.jsp");
			}else {
				session.setAttribute("failed", "Add book to cart failed");
				resp.sendRedirect("all_new_books.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


	
}
