package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
	public boolean addBooks(BookDtls b);
	public List<BookDtls> getAllBooks();
	public boolean editBooks(BookDtls b);
	public BookDtls getBookbyId(int id);
	public boolean deleteBooks(int id);
}
