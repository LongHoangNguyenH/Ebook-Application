package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBookServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookname = req.getParameter("book_name");
			String author = req.getParameter("author_name");
			String price = req.getParameter("price");
			String categories = "Old";
			String status = "Active";
			Part part = req.getPart("book_image");
			String filename = part.getSubmittedFileName();
			
			String useremail = req.getParameter("user");
			
			
			BookDtls book = new BookDtls(bookname, author, price, categories, status, filename,useremail);
			
			HttpSession session = req.getSession();
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());

			boolean f = dao.addBooks(book);		
			if(f) {
				
				String path = getServletContext().getRealPath("") + "book";
				System.out.println(path);
				File file = new File(path);
				part.write(path+File.separator+ filename);
				
				session.setAttribute("sucMsg","Add book Successfully");
				resp.sendRedirect("sell_book.jsp");
			}
			else {
				session.setAttribute("failedMsg", "Something went wrong during add new book");
				resp.sendRedirect("sell_book.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
