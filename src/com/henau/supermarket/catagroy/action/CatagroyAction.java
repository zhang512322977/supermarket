package com.henau.supermarket.catagroy.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.junit.Test;

import com.google.gson.Gson;
import com.henau.supermarket.catagroy.entity.Catagroy;
import com.henau.supermarket.catagroy.entity.Catagroy2;
import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.catagroy.service.Catagroy2Service;
import com.henau.supermarket.catagroy.service.Catagroy3Service;
import com.henau.supermarket.catagroy.service.CatagroyService;
import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;

public class CatagroyAction {
	// 一二三级分类服务层
	@Resource
	private CatagroyService catagroyService;
	@Resource
	private Catagroy2Service catagroy2Service;
	@Resource
	private Catagroy3Service catagroy3Service;
	// 一二三级分类实体层
	private Catagroy catagroy;
	private Catagroy2 catagroy2;
	private Catagroy3 catagroy3;
	// 分类等级
	private String dengji;
	/*
	 * 用于生成列表页
	 */
	// 一二三级分类集合
	private List<Catagroy> cset;
	private List<Catagroy2> c2set;
	private List<Catagroy3> c3set;
	// 分页
	private PageResult pageResult;
	private int pageNo;
	private int pageSize = 10;
	private static int default_size = 5;

	@Test
	public void  test(){
		
		Gson gson = new Gson();
		List list = new ArrayList<Catagroy>();
		Catagroy catagroy = new Catagroy();
		catagroy.setName("123456");
		list.add(catagroy);
		
	    String s=gson.toJson(list);
		System.out.println(s);
		
	}
	
	
	
	public void geta() throws IOException{
		 HttpServletResponse response=ServletActionContext.getResponse();  
		    /* 
		     * 在调用getWriter之前未设置编码(既调用setContentType或者setCharacterEncoding方法设置编码), 
		     * HttpServletResponse则会返回一个用默认的编码(既ISO-8859-1)编码的PrintWriter实例。这样就会 
		     * 造成中文乱码。而且设置编码时必须在调用getWriter之前设置,不然是无效的。 
		     * */  
		    response.setContentType("text/html;charset=utf-8");  
		    //response.setCharacterEncoding("UTF-8");  
		    PrintWriter out = response.getWriter();  
		    //JSON在传递过程中是普通字符串形式传递的，这里简单拼接一个做测试  
		    Gson gson = new Gson();
		    System.out.println("1111");
		    cset = (List<Catagroy>) ServletActionContext.getServletContext().getAttribute("cset");
		    		
		    if(cset==null){
		    	cset = catagroyService.findObjects();
		    	ServletActionContext.getServletContext().setAttribute("cset", cset);	    	
		    }
		    
		    System.out.println(cset);
		    String gg = gson.toJson(cset);
		    
		    System.out.println(gg +" --");
		    out.print(gson.toJson(cset).toString());
		    out.flush();  
		    out.close();  
		   // System.out.println(1);
		
	}
	public void getb() throws IOException{
		 HttpServletResponse response=ServletActionContext.getResponse();  
		    /* 
		     * 在调用getWriter之前未设置编码(既调用setContentType或者setCharacterEncoding方法设置编码), 
		     * HttpServletResponse则会返回一个用默认的编码(既ISO-8859-1)编码的PrintWriter实例。这样就会 
		     * 造成中文乱码。而且设置编码时必须在调用getWriter之前设置,不然是无效的。 
		     * */  
		    response.setContentType("text/html;charset=utf-8");  
		    //response.setCharacterEncoding("UTF-8");  
		    PrintWriter out = response.getWriter();  
		    //JSON在传递过程中是普通字符串形式传递的，这里简单拼接一个做测试  
		    Gson gson = new Gson();
		    c2set = (List<Catagroy2>) ServletActionContext.getServletContext().getAttribute("c2set");
		    System.out.println(catagroy.getCaid());	
		    if(c2set==null){
		    	Catagroy  cv=  catagroyService.findObjectById(catagroy.getCaid());
		    	if(cv==null){
		    		cv = new Catagroy();
		    	}
		    	if(cv.getC2set()!=null){
		    		c2set = new ArrayList<Catagroy2>();
		    		for (Catagroy2 element : cv.getC2set()) {
						c2set.add(element);
					}
		    	}else{
		    		c2set = new ArrayList<Catagroy2>();
		    	}
		    	//ServletActionContext.getServletContext().setAttribute("c2set", c2set);	    	
		    }
		    
		    //System.out.println(c2set);
		    System.out.println(gson.toJson(c2set).toString());
		    out.print(gson.toJson(c2set).toString());
		    out.flush();  
		    out.close();  
		   // System.out.println(1);
		
	}
	public void getc() throws IOException{
		 HttpServletResponse response=ServletActionContext.getResponse();  
		  /*   
		     * 在调用getWriter之前未设置编码(既调用setContentType或者setCharacterEncoding方法设置编码), 
		     * HttpServletResponse则会返回一个用默认的编码(既ISO-8859-1)编码的PrintWriter实例。这样就会 
		     * 造成中文乱码。而且设置编码时必须在调用getWriter之前设置,不然是无效的。 
		     *   
		   */
		 response.setContentType("text/html;charset=utf-8");  
		    //response.setCharacterEncoding("UTF-8");  
		    PrintWriter out = response.getWriter();  
		    //JSON在传递过程中是普通字符串形式传递的，这里简单拼接一个做测试  
		    Gson gson = new Gson();
		    c3set = (List<Catagroy3>) ServletActionContext.getServletContext().getAttribute("c3set");
		    System.out.println(catagroy2.getC2id());
		    if(c3set==null){
		    	Catagroy2  cv=  catagroy2Service.findObjectById(catagroy2.getC2id());
		    	if(cv==null){
		    		cv = new Catagroy2();
		    	}
		    	if(cv.getC3set()!=null){
		    		c3set = new ArrayList<Catagroy3>();
		    		for (Catagroy3 element : cv.getC3set()) {
						c3set.add(element);
					}
		    	}else{
		    		c3set = new ArrayList<Catagroy3>();
		    	}
		    	//ServletActionContext.getServletContext().setAttribute("c3set", c3set);	    	
		    }
		    
		   // System.out.println(c3set);
		    System.out.println(gson.toJson(c3set).toString());
		    out.print(gson.toJson(c3set).toString());
		    out.flush();  
		    out.close();  
		    //System.out.println(1);
		
	}
	// 根据id删除一级分类项
	public String delete() {
		if (catagroy != null) {
			catagroyService.delete(catagroy.getCaid());
			ServletActionContext.getRequest().setAttribute("msg", "删除成功");
			return getall();
		} else {
			ServletActionContext.getRequest().setAttribute("msg", "删除失败");
			return getall();
		}

	}

	// 根据id删除二级分类项
	public String delete2() {
		if (catagroy2 != null) {
			catagroy2Service.delete(catagroy2.getC2id());
			ServletActionContext.getRequest().setAttribute("msg", "删除成功");
			return get2();
		} else {
			ServletActionContext.getRequest().setAttribute("msg", "删除失败");
			return get2();
		}
	}

	// 根据id删除三级分类项
	public String delete3() {

		if (catagroy3 != null) {
			catagroy3Service.delete(catagroy3.getC3id());
			ServletActionContext.getRequest().setAttribute("msg", "删除成功");
			return get3();
		} else {
			ServletActionContext.getRequest().setAttribute("msg", "删除失败");
			return get3();
		}
	}

	// 根据名称添加一级分类
	public String add() {
		// 校验传来的前端数据
		if (catagroy != null && catagroy.getName() != null
				&& !catagroy.getName().equals("")) {
			catagroy.setNum("0");
			// System.out.println(catagroy.getName());
			// 判断是否重复
			Catagroy catagroya = catagroyService.findObjectByName(catagroy
					.getName());
			// System.out.println(catagroya);
			if (catagroya != null) {
				ServletActionContext.getRequest().setAttribute("msg",
						"你输入的数据为已经存在");
				return getall();
			} else {
				ServletActionContext.getRequest().setAttribute("msg", "添加成功");
				// 保存到数据库
				catagroyService.save(catagroy);
				return getall();
			}
		} else {
			ServletActionContext.getRequest().setAttribute("msg", "你输入的数据为空");
			return getall();
		}
		// ServletActionContext.getRequest().setAttribute("msg", "添加成功");

	}

	/**
	 * 根据名称添加二级分类 一级分类对应对个二级分类在数据库中是单向一对多关系（设置了在一的一方来维护关系） 因此由一的一方来保存多的一方
	 * 
	 * @return 二级分类列表页面
	 */
	public String add2() {
		// 校验前端传来的数据
		if (catagroy2 != null && catagroy2.getName() != null
				&& !catagroy2.getName().equals("")) {
			Catagroy2 c2 = catagroy2Service.findObjectByName(catagroy2
					.getName());
			if (c2 != null) {
				ServletActionContext.getRequest().setAttribute("msg",
						"你输入的数据为已经存在");
				return get2();
			} else {
				// 根据id查询到一级分类
				catagroy = catagroyService.findObjectById(catagroy.getCaid());
				catagroy2.setNum("0");
				catagroy.setCatagroy2(catagroy2);
				System.out.println(catagroy);
				// catagroy2.setCatagroy(catagroy);
				// 更新一级分类
				catagroyService.update(catagroy);
				// catagroy2Service.save(catagroy2);
				return get2();
			}

		} else {
			ServletActionContext.getRequest().setAttribute("msg", "你输入的数据为空");
			return get2();
		}
		// catagroy2.setName(catagroy2.getName());
		// System.out.println(catagroy2);
		// catagroy2Service.save(catagroy2);
	}

	/**
	 * 根据名称添加三级分类 二级分类对应对个三级分类在数据库中是单向一对多关系（设置了在一的一方来维护关系） 因此由一的一方来保存多的一方
	 * 
	 * @return 三级分类列表页面
	 */
	public String add3() {
		if (catagroy3 != null && catagroy3.getName() != null
				&& !catagroy3.getName().equals("")) {
			Catagroy3 c3 = catagroy3Service.findObjectByName(catagroy3
					.getName());
			if (c3 != null) {
				ServletActionContext.getRequest().setAttribute("msg",
						"你输入的数据为已经存在");
				return get3();
			} else {
				// catagroy =
				// catagroyService.findObjectById(catagroy.getCaid());
				catagroy2 = catagroy2Service
						.findObjectById(catagroy2.getC2id());
				catagroy3.setNum("0");

				catagroy2.getC3set().add(catagroy3);
				// catagroy.setCatagroy2(catagroy2);
				// catagroy.getC2set().add(catagroy2);
				System.out.println(catagroy);
				catagroy2Service.update(catagroy2);
				return get3();
			}

		} else {
			ServletActionContext.getRequest().setAttribute("msg", "你输入的数据为空");
			return get3();
		}
	}

	// 获取三级分类列表数据
	public String get3() {
		if (catagroy2 != null) {
			catagroy2 = catagroy2Service.findObjectById(catagroy2.getC2id());
			
			Set<Catagroy3> set = catagroy2.getC3set();

			c3set = new ArrayList<Catagroy3>(set);

			pageResult = new PageResult(set.size(), pageNo == 0 ? 1 : pageNo,
					pageSize, c3set);

		}
		return "c3list";

	}

	// 获取一级分类列表数据
	public String getall() {
		QueryHelper helper = new QueryHelper(Catagroy.class, "t");
		pageResult = catagroyService.getPageResult(helper, pageNo, pageSize);
		cset = pageResult.getItems();
		return "clist";

	}

	// 获取二级分类列表数据
	public String get2() {
		System.out.println(catagroy);
		if (catagroy != null) {
			catagroy = catagroyService.findObjectById(catagroy.getCaid());
			System.out.println(catagroy);
			Set<Catagroy2> set = catagroy.getC2set();

			c2set = new ArrayList<Catagroy2>(set);

			pageResult = new PageResult(set.size(), pageNo == 0 ? 1 : pageNo,
					pageSize, c2set);

		}
		return "c2list";
	}

	public PageResult getPageResult() {
		return pageResult;
	}

	public void setPageResult(PageResult pageResult) {
		this.pageResult = pageResult;
	}

	public List<Catagroy2> getC2set() {
		return c2set;
	}

	public void setC2set(List<Catagroy2> c2set) {
		this.c2set = c2set;
	}

	public List<Catagroy3> getC3set() {
		return c3set;
	}

	public Catagroy2 getCatagroy2() {
		return catagroy2;
	}

	public void setCatagroy2(Catagroy2 catagroy2) {
		this.catagroy2 = catagroy2;
	}

	public Catagroy3 getCatagroy3() {
		return catagroy3;
	}

	public void setCatagroy3(Catagroy3 catagroy3) {
		this.catagroy3 = catagroy3;
	}

	public void setC3set(List<Catagroy3> c3set) {
		this.c3set = c3set;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public static int getDefault_size() {
		return default_size;
	}

	public static void setDefault_size(int default_size) {
		CatagroyAction.default_size = default_size;
	}

	public List<Catagroy> getCset() {
		return cset;
	}

	public void setCset(List<Catagroy> cset) {
		this.cset = cset;
	}

	public Catagroy getCatagroy() {
		return catagroy;
	}

	public void setCatagroy(Catagroy catagroy) {
		this.catagroy = catagroy;
	}

	public String getDengji() {
		return dengji;
	}

	public void setDengji(String dengji) {
		this.dengji = dengji;
	}

}
