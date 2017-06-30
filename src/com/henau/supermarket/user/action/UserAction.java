package com.henau.supermarket.user.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.junit.Test;

import cn.itcast.vcode.utils.VerifyCode;

import com.henau.supermarket.core.action.BaseAction;
import com.henau.supermarket.user.entity.User;
import com.henau.supermarket.user.service.UserService;

public class UserAction extends BaseAction{
	@Resource
	private UserService userService;
	//用户
	private User user;
	//是否卖家
	private String isadmin;
	//验证码
	private String vcode;
	//重复密码
	private String repassword;
	
	private File File;
	private String FileName;
	private String FileContentType;
	
	private String year;
	private String mouth;
	private String day;
	
	
	public String logout(){
		
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		return "index";
	}
	
	
	@Test
	public void test(){
		Date dd = new Date(1,6,3);
		System.out.println(dd.toLocaleString());
	   // Calendar calendar =Calendar.getInstance();
	   // calendar.set(2014, 7, 5);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		try {
			Date d= dateFormat.parse("1901-3-6 ");
			System.out.println(dateFormat.format(d));
			//System.out.println(d.toLocaleString());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//System.out.println(dateFormat.format(calendar.getTime()));
	}
	
	
	
	public String modify(){
		
		System.out.println("修改成功！！");
		SimpleDateFormat dateFormat =new SimpleDateFormat("yyyy-mm-dd");
		Date d = null;
		try {
			d = dateFormat.parse(year+"-"+mouth+"-"+day);
		} catch (ParseException e) {
			System.out.println("输入有误"+year+"-"+mouth+"-"+day);
		}
		
		
		user.setBirthday(d);
		User s_user =(User) ServletActionContext.getRequest().getSession().getAttribute("user");
		user.setUserid(s_user.getUserid());
		user.setPassword(s_user.getPassword());
		user.setImagepath("");
		System.out.println(s_user);
		System.out.println(year+" ："+mouth+" ："+day);
		System.out.println(user);
		userService.update(user);
		ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return "user-info";
	}
	
	
	//注册请求
	public String reg(){
		HttpServletRequest request = ServletActionContext.getRequest();
		//r如果校验成功就写入数据库否则返回注册界面
		if(virefy(request)){
			System.out.println(user);
			user.setBirthday(new Date());
			user.setEmail("");
			user.setImagepath("");
			user.setNickname("");
			user.setSex("");
			user.setTelephone("");
			user.setIsadmin(new Boolean(isadmin));
			user.setQq("");
			userService.save(user);
			
			
		}else{
			return "reg";
		}
		request.setAttribute("msg","注册成功，请登录！！");
		return "success";
	}
	
	//登录请求
	public String login(){
		HttpServletRequest request = ServletActionContext.getRequest();
		/*
		 * 1.登录校验
		 *   a.成功把查询到的user放到session中
		 *   b.失败把失败信息msg放到reqest域
		 */
		System.out.println(user);
		if(loginvirefy(request)){
			return "index";
		}
		return "login";
	}
	//验证码校验
	public void vCode(){
		
		VerifyCode code = new VerifyCode();
		BufferedImage img = code.getImage();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String text = code.getText();
		request.getSession().setAttribute("vcode", text);
		try {
			VerifyCode.output(img, response.getOutputStream());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	private boolean loginvirefy(HttpServletRequest request) {
		
		User db_user=userService.findUserByUserName(user.getUsername());
		if(db_user==null){
			System.out.println(user);
			request.setAttribute("msg", "用户名或者密码有误！！");
			return false;
		}
		if(db_user.getPassword().equals(user.getPassword())){
			System.out.println(db_user);
			request.getSession().setAttribute("user", db_user);
			return true;
		}else{
			System.out.println(user);
			request.setAttribute("msg", "用户名或者密码有误！！");
			return false;
		}
		
	}

	//这里负责校验
	private boolean virefy(HttpServletRequest request) {
	  //用户格式校验
      if(user!=null&&repassword!=""&&vcode!=""&&repassword.equals(user.getPassword())){
    	  if(vcode.equalsIgnoreCase((String) (request.getSession().getAttribute("vcode")))){
    		  User u= userService.findUserByUserName(user.getUsername());
    		  if(u==null){			  
    			  return true;
    		  }else{
    			  request.setAttribute("msg", "注册失败！！用户名已经被注册！！"); 
    			  return false;
    		  }
    	  }
      }
     
     request.setAttribute("msg", "注册失败！！请检查输入！！");
   
	  //密码和重复密码是否一致校验	
	  //用户是否重复校验
	  
      return false;
		
	}













	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}


	public String getMouth() {
		return mouth;
	}


	public void setMouth(String mouth) {
		this.mouth = mouth;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public String getRepassword() {
		return repassword;
	}



	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getIsadmin() {
		return isadmin;
	}

	public void setIsadmin(String isadmin) {
		this.isadmin = isadmin;
	}

	public String getVcode() {
		return vcode;
	}

	public void setVcode(String vcode) {
		this.vcode = vcode;
	}
	
	
	
}
