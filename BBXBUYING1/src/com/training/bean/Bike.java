package com.training.bean;




public class Bike {
	public String image;
	public String bikeId;
	public String bikeType;
	public String company;
	public String model;
	public int yom;
	private Details details;
	
	
	public String getBikeId() {
		return bikeId;
	}
	public void setBikeId(String bikeId) {
		this.bikeId = bikeId;
	}
	public String getBikeType() {
		return bikeType;
	}
	public void setBikeType(String bikeType) {
		this.bikeType = bikeType;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getYom() {
		return yom;
	}
	public void setYom(int yom) {
		this.yom = yom;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public String toString() {
		return "bike [bikeId=" + bikeId + ", bikeType=" + bikeType
				+ ", company=" + company + ", model=" + model + ",yom= " +yom +", obj="
				+ details + "]";
	}
	public Object getAllBike() {
		// TODO Auto-generated method stub
		return null;
	}
}
	


	
	
