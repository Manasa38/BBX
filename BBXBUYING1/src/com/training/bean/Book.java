package com.training.bean;

import java.util.List;

public class Book {
	public String image;
	private String bookId;
	private String author;
	private String publisher;
	private int yop;
	private Details details;

	private String bimage;
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public Book(String bookId, String author, String publisher, int yop) {
		super();
		this.bookId = bookId;
		this.author = author;
		this.publisher = publisher;
		this.yop = yop;
	}
	public Book() {
		super();
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	
	public int getYop() {
		return yop;
	}
	public void setYop(int yop) {
		this.yop = yop;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Car [bookId=" + bookId + ",author=" + author
				+ ", publisher=" +  publisher + ",  yop=" +  yop + ", obj="
				+ details + "]";
	}
	public List<Book> getAllBook() {
		
		// TODO Auto-generated method stub
		return null;
	}
}
	
	

