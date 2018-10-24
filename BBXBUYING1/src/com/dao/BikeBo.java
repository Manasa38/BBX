package com.dao;




import java.sql.SQLException;

import java.util.List;

import com.dao.BikeDao;
import com.training.bean.Bike;



public class BikeBo {
	public List<Bike> getAllCarsFromDb() throws ClassNotFoundException, SQLException {
		return new BikeDao().getAllBike();
	}
}