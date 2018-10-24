package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.training.bean.Bike;

public class BikeDao {
	public List<Bike> getAllBike() throws ClassNotFoundException, SQLException {
		List<Bike> clist = new ArrayList<Bike>();
		Connection con = Connect.getMySqlConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("select p.image from bike b, Product_details p where  p.details_id = b.details_id");
		while (rs.next()) {
			Bike temp = new Bike();
			temp.setBikeId(rs.getString(1));
			temp.setBikeType(rs.getString(2));
			temp.setCompany(rs.getString(3));
			temp.setModel(rs.getString(4));
			temp.setYom(rs.getInt(5));
			// temp.setCompany(rs.getString(1));

			clist.add(temp);
		}
		return clist;
	}

}