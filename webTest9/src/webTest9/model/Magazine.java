package webTest9.model;

import java.io.Serializable;
import java.util.Date;

public class Magazine implements Serializable {
	public int id ;
	public String name;
	public int price;
	public Author author;
	public Date aa;
	
    public Date getAa() {
		return aa;
	}
	public void setAa(Date aa) {
		this.aa = aa;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	//	public String price1;
//	public String getPrice1() {
//		return price1;
//	}
//	public void setPrice1(String price1) {
//		this.price1 = price1;
//	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
}
