package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
	public boolean addBooks(BookDtls b);
	public List<BookDtls> getAllBooks();
	public boolean editBooks(BookDtls b);
	public BookDtls getBookbyId(int id);
	public boolean deleteBooks(int id);
	public List<BookDtls> getNewBook();
	public List<BookDtls> getRecentBooks();
	public List<BookDtls> getOldBooks();
	public List<BookDtls> getAllRecentBooks();
	public List<BookDtls> getAllOldBooks();
	public List<BookDtls> getAllNewBooks();
	public List<BookDtls> getBookByOld(String email, String cate);
	public boolean oldBookDelete(String email, String cat, int bid);
}
