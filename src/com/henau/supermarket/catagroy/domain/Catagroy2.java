package com.henau.supermarket.catagroy.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Catagroy2  implements Serializable{

	private String c2id;
	private String name;
	private String num;
	private Catagroy catagroy;
	
	private Set<Catagroy3> c3set = new HashSet<Catagroy3>();
	
	
	
	public Catagroy getCatagroy() {
		return catagroy;
	}


	public void setCatagroy(Catagroy catagroy) {
		this.catagroy = catagroy;
	}


	
	

	@Override
	public String toString() {
		return "Catagroy2 [c2id=" + c2id + ", name=" + name + ", num=" + num
				+ ", catagroy=" + catagroy + ", c3set=" + c3set + "]";
	}
	public Set<Catagroy3> getC3set() {
		return c3set;
	}
	public void setC3set(Set<Catagroy3> c3set) {
		this.c3set = c3set;
	}
	public String getC2id() {
		return c2id;
	}
	public void setC2id(String c2id) {
		this.c2id = c2id;
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
