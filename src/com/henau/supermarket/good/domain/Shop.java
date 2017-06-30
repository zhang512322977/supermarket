package com.henau.supermarket.good.domain;

import java.io.Serializable;

import java.util.Set;

import com.henau.supermarket.user.domain.User;

public class Shop implements Serializable {

	private User ower;
	// 商铺id
	private String sid;
	// 商铺名称
	private String shopname;
	// 商铺地址
	private String address;
	// 店铺门面图标
	private String simage;
	// 店铺logo
	private String limage;
	// 店铺简介
	private String sjianjie;
	// 店铺宣传图片
	private String xximage;
	// 店铺详细介绍
	private String xiangxi;

	// 经营范围
	private String jingYingFanWei;

	// 法人身份证号码
	private String faRenShenFenHaoMa;
	// 法人身份证图片（正面）
	private String faRenShenFenZhengTu;
	// 营业执照图片
	private String ziZhaoTu;
	// 安全许可证图片
	private String xuKeZhengTu;

	// 店铺产品
	private Set<Good> gset;

	
	public String getJingYingFanWei() {
		return jingYingFanWei;
	}

	public void setJingYingFanWei(String jingYingFanWei) {
		this.jingYingFanWei = jingYingFanWei;
	}

	public String getFaRenShenFenHaoMa() {
		return faRenShenFenHaoMa;
	}

	public void setFaRenShenFenHaoMa(String faRenShenFenHaoMa) {
		this.faRenShenFenHaoMa = faRenShenFenHaoMa;
	}

	public String getFaRenShenFenZhengTu() {
		return faRenShenFenZhengTu;
	}

	public void setFaRenShenFenZhengTu(String faRenShenFenZhengTu) {
		this.faRenShenFenZhengTu = faRenShenFenZhengTu;
	}

	public String getZiZhaoTu() {
		return ziZhaoTu;
	}

	public void setZiZhaoTu(String ziZhaoTu) {
		this.ziZhaoTu = ziZhaoTu;
	}

	public String getXuKeZhengTu() {
		return xuKeZhengTu;
	}

	public void setXuKeZhengTu(String xuKeZhengTu) {
		this.xuKeZhengTu = xuKeZhengTu;
	}

	public String getXximage() {
		return xximage;
	}

	public void setXximage(String xximage) {
		this.xximage = xximage;
	}

	public User getOwer() {
		return ower;
	}

	public void setOwer(User ower) {
		this.ower = ower;
	}

	public String getXiangxi() {
		return xiangxi;
	}

	public void setXiangxi(String xiangxi) {
		this.xiangxi = xiangxi;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSimage() {
		return simage;
	}

	public void setSimage(String simage) {
		this.simage = simage;
	}

	public String getLimage() {
		return limage;
	}

	public void setLimage(String limage) {
		this.limage = limage;
	}

	public String getSjianjie() {
		return sjianjie;
	}

	public void setSjianjie(String sjianjie) {
		this.sjianjie = sjianjie;
	}

	public Set<Good> getGset() {
		return gset;
	}

	public void setGset(Set<Good> gset) {

		this.gset = gset;
	}

	@Override
	public String toString() {
		return "Shop [sid=" + sid + ", shopname=" + shopname + ", address="
				+ address + ", simage=" + simage + ", limage=" + limage
				+ ", sjianjie=" + sjianjie + ", gset=" + gset + "]";
	}

}
