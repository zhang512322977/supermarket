package com.henau.supermarket.catagroy.entity;

import java.io.Serializable;
import java.util.Set;

import com.henau.supermarket.good.entity.Good;



public class Xcatagroy implements Serializable{

	private String id;
	private String name;
	private String num;
	private Set<Good> gset;
	
	
	
	@Override
	public String toString() {
		return "Xcatagroy [id=" + id + ", name=" + name + ", num=" + num
				+ ", gset=" + gset + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public Set<Good> getGset() {
		return gset;
	}
	public void setGset(Set<Good> gset) {
		this.gset = gset;
	}
	
	
	
}
