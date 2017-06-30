package com.henau.supermarket.good.entity;

import java.io.Serializable;

import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.catagroy.entity.Xcatagroy;

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
	private Catagroy3 catagroy3;
	//商品图片
	private String gimage;
	//商品规格
	private String gguige;
	//概要介绍
	private String gaiyao;
	
	private Xcatagroy xcatagroy;
	
	
	
   






	public Catagroy3 getCatagroy3() {
		return catagroy3;
	}


	public void setCatagroy3(Catagroy3 catagroy3) {
		this.catagroy3 = catagroy3;
	}


	public Xcatagroy getXcatagroy() {
		return xcatagroy;
	}


	public void setXcatagroy(Xcatagroy xcatagroy) {
		this.xcatagroy = xcatagroy;
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
