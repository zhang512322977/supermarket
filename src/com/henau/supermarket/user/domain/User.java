package com.henau.supermarket.user.domain;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable{

	private String userid;
	private String username;
	private String password;
	private String nickname;
	private String email;
	private String sex;
	private String telephone;
	private String imagepath;
	private Date birthday;
	private boolean isadmin;
	private String qq;
	

	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		
		if(sex.equals("0")){
			sex="保密";
		}
		if(sex.equals("1")){
			sex="男";
		}
		if(sex.equals("2")){
			sex="女";
		}
		
		this.sex = sex;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public boolean isIsadmin() {
		return isadmin;
	}
	public void setIsadmin(boolean isadmin) {
		this.isadmin = isadmin;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username
				+ ", password=" + password + ", nickname=" + nickname
				+ ", email=" + email + ", sex=" + sex + ", telephone="
				+ telephone + ", imagepath=" + imagepath + ", birthday="
				+ birthday + ", isadmin=" + isadmin + ", qq=" + qq + "]";
	}

	
	
	
}
