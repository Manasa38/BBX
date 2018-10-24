package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.training.bean.Bike;
import com.training.bean.Book;

public class BookDao {
	public List<Book> getAllBook() throws ClassNotFoundException, SQLException {
		List<Book> clist = new ArrayList<Book>();
		Connection con = Connect.getMySqlConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("select p.image from bike b, Product_details p where  p.details_id = b.details_id");
		while (rs.next()) {
			Book temp = new Book();
			temp.setBookId(rs.getString(1));
			// temp.setCompany(rs.getString(1));

			clist.add(temp);
		}
		return clist;
	}

}