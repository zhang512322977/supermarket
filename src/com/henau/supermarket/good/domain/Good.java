package com.henau.supermarket.good.domain;

import java.io.Serializable;

public class Good implements Serializable {
	//商品编号
	private String gid;
	
	
	//商品名称
	private String gname;
	//商品单价
	private String gprices;
	//商品库存
	private String num;
	//商品分类123
	private String catagroy1;
	private String catagroy2;
	private String catagroy3;
	//商品图片
	private String gimage;
	//商品规格
	private String gguige;
	//概要介绍
	private String gaiyao;
	
	
	
	
	@Override
	public String toString() {
		return "Good [gid=" + gid + ", gname=" + gname + ", gprices=" + gprices
				+ ", num=" + num + ", catagroy1=" + catagroy1 + ", catagroy2="
				+ catagroy2 + ", catagroy3=" + catagroy3 + ", gimage=" + gimage
				+ ", gguige=" + gguige + ", gaiyao=" + gaiyao + "]";
	}


	public String getGaiyao() {
		return gaiyao;
	}


	public void setGaiyao(String gaiyao) {
		this.gaiyao = gaiyao;
	}


	public String getGname() {
		return gname;
	}
	
	
	public String getGid() {
		return gid;
	}


	public void setGid(String gid) {
		this.gid = gid;
	}


	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGprices() {
		return gprices;
	}
	public void setGprices(String gprices) {
		this.gprices = gprices;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	public String getCatagroy1() {
		return catagroy1;
	}


	public void setCatagroy1(String catagroy1) {
		this.catagroy1 = catagroy1;
	}


	public String getCatagroy2() {
		return catagroy2;
	}


	public void setCatagroy2(String catagroy2) {
		this.catagroy2 = catagroy2;
	}


	public String getCatagroy3() {
		return catagroy3;
	}


	public void setCatagroy3(String catagroy3) {
		this.catagroy3 = catagroy3;
	}


	public String getGimage() {
		return gimage;
	}
	public void setGimage(String gimage) {
		this.gimage = gimage;
	}
	public String getGguige() {
		return gguige;
	}
	public void setGguige(String gguige) {
		this.gguige = gguige;
	}
	
	//详细介绍
	
	//商品销售类别
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((gid == null) ? 0 : gid.hashCode());
		
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Good other = (Good) obj;
		if (gid == null) {
			if (other.gid != null)
				return false;
		} else if (!gid.equals(other.gid))
			return false;
		
		return true;
	}
	
}
