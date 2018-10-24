package com.dao;

import java.sql.SQLException;

import java.util.List;

import com.training.bean.Book;

import com.dao.BookDao;

public class BookBo {
	public List<Book> getAllCarsFromDb() throws ClassNotFoundException, SQLException {
		return new Book().getAllBook();
	}
}