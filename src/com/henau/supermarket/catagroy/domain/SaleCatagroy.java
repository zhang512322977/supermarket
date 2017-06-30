package com.henau.supermarket.catagroy.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.henau.supermarket.good.domain.Good;

public class SaleCatagroy  implements Serializable{

	private String caid;
	private String name;
	private String num;
	private Set<Good> goodset = new HashSet<Good>();
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
	public Set<Good> getGoodset() {
		return goodset;
	}
	public void setGoodset(Set<Good> goodset) {
		this.goodset = goodset;
	}
	@Override
	public String toString() {
		return "SaleCatagroy [caid=" + caid + ", name=" + name + ", num=" + num
				+ ", goodset=" + goodset + "]";
	}
	
	
	
	
	
	
}
