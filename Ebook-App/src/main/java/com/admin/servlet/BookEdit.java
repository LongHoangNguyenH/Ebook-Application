package com.admin.servlet;


import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/editbooks")
public class BookEdit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String bookname = req.getParameter("book_name");
			String author = req.getParameter("author_name");
			String price = req.getParameter("price");
			String status = req.getParameter("status");
			
			BookDtls book = new BookDtls();
			book.setBookId(id);
			book.setBookname(bookname);
			book.setAuthor(author);
			book.setPrice(price);
			book.setStatus(status);
			
			HttpSession session = req.getSession();
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			boolean f = dao.editBooks(book);
			if(f) {
				session.setAttribute("sucMsg","Edit book Successfully");
				resp.sendRedirect("admin/all_books.jsp");
			}
			else {
				session.setAttribute("failedMsg", "Something went wrong during Edit book");
				resp.sendRedirect("admin/all_books.jsp");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
