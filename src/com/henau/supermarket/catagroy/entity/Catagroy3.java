package com.henau.supermarket.catagroy.entity;

import java.io.Serializable;
import java.util.Set;

import com.henau.supermarket.good.entity.Good;

public class Catagroy3  implements Serializable{

	private String c3id;
	private String name;
	private String num;
	
	private Catagroy2 catagroy2;
	private Set<Good> gset;
	
	
	@Override
	public String toString() {
		return "Catagroy3 [c3id=" + c3id + ", name=" + name + ", num=" + num
				 + ", gset=" + gset + "]";
	}
	public Set<Good> getGset() {
		return gset;
	}
	public void setGset(Set<Good> gset) {
		this.gset = gset;
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
