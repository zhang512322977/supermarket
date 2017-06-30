package com.henau.supermarket.catagroy.domain;

import java.io.Serializable;

public class Catagroy3  implements Serializable{

	private String c3id;
	private String name;
	private String num;
	
	private Catagroy2 catagroy2;
	
	
	
	
	
	@Override
	public String toString() {
		return "Catagroy3 [c3id=" + c3id + ", name=" + name + ", num=" + num
				+ ", catagroy2=" + catagroy2 + "]";
	}
	public Catagroy2 getCatagroy2() {
		return catagroy2;
	}
	public void setCatagroy2(Catagroy2 catagroy2) {
		this.catagroy2 = catagroy2;
	}
	public String getC3id() {
		return c3id;
	}
	public void setC3id(String c3id) {
		this.c3id = c3id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	
	
}
