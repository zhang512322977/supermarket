package com.henau.supermarket.catagroy.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Catagroy  implements Serializable{

	private String caid;
	private String name;
	private String num;
	private Set<Catagroy2> c2set = new HashSet<Catagroy2>();
	
	
	
	
	
	public void setCatagroy2( Catagroy2 c2){
		c2set.add(c2);
	}
	
	@Override
	public String toString() {
		return "Catagroy [caid=" + caid + ", name=" + name + ", num=" + num
				+ ", c2set=" + c2set + "]";
	}
	
	
	
	public Set<Catagroy2> getC2set() {
		return c2set;
	}



	public void setC2set(Set<Catagroy2> c2set) {
		this.c2set = c2set;
	}



	public String getCaid() {
		return caid;
	}
	public void setCaid(String caid) {
		this.caid = caid;
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
