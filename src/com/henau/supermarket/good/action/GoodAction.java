package com.henau.supermarket.good.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.henau.supermarket.catagroy.entity.Catagroy;
import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.catagroy.service.Catagroy2Service;
import com.henau.supermarket.catagroy.service.Catagroy3Service;
import com.henau.supermarket.catagroy.service.CatagroyService;
import com.henau.supermarket.catagroy.service.XcatagroyService;
import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;
import com.henau.supermarket.good.entity.Good;
import com.henau.supermarket.good.service.GoodService;

public class GoodAction {
	@Resource
	private GoodService goodService;
	@Resource
	private CatagroyService catagroyService;
	@Resource
	private Catagroy2Service catagroy2Service;
	@Resource
	private Catagroy3Service catagroy3Service;
	@Resource
	private XcatagroyService xcatagroyService;
	
	private String caid;
	private String c2id;
	private String c3id;
	//商品
	private Good good;

	private String checkbox[];
	//规格
	private String checkbox1;
	private String checkbox2;
	private String checkbox3;
	private String checkbox4;
	private String checkbox5;
	private String checkbox6;
	
	private String cxprices;
	//销售分类
	private String xcatagroy;

	private String xg[];
	//宣传图片
	private File imageFile;

	private String imageFileFileName;
	private String imageFileContentType;
	private PageResult pageResult;
	private int pageNo;
	private int pageSize = 10;
	private static int default_size = 5;
	List<Catagroy> clist ; 
	List<Catagroy3> c3list ; 
	List<Good> glist;
	
	public String getindex(){
		c3list = catagroy3Service.findObjects();
		glist = goodService.findObjects();
		clist = catagroyService.findObjects();
		if(glist==null){
			glist = new ArrayList<Good>();
		}
		if(clist==null){
			clist = new ArrayList<Catagroy>();
		}
		if(c3list==null){
			c3list = new ArrayList<Catagroy3>();
		}
		for (Good god : glist) {
			if(god!=null){
				
				//god.setCatagroy1(catagroyService.findObjectById(god.getCatagroy1()).getName());
				//god.setCatagroy2(catagroy2Service.findObjectById(god.getCatagroy2()).getName());
			//	god.setCatagroy3(catagroy3Service.findObjectById(god.getCatagroy3()).getName());
			   // god.setCatagroy3(catagroy3Service.findObjectById(c3id));
			  //  god.setXcatagroy(xcatagroyService.findObjectById(xcatagroy));
			    // god.setXcatagroy(xcatagroy);
				
			}
		}
		
		for (Good god : glist) {
			//System.out.println(god.getCatagroy1());
		}
		
		return "index";
	}
	
	
	//获取全部商品
	public String getall(){
		QueryHelper helper = new QueryHelper(Good.class, "t");
		pageResult = goodService.getPageResult(helper, pageNo, pageSize);
		glist = pageResult.getItems();

		return "good";
		
		
	}
	
	public String delete(){
		goodService.delete(good.getGid());
		
		return getall();
	}
	
	
	public String add() {
		System.out.println(good);
		//Xcatagroy x1catagroy =xcatagroyService.findObjectById(xcatagroy);
		
		Catagroy3 catagroy3 = catagroy3Service.findObjectById(c3id);
		//catagroy3.setGset(gset);
		good.setGprices(cxprices);
		/*System.out.println(cxprices);
		System.out.println(xcatagroy);*/
		if (imageFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + imageFileFileName;
			try {
				FileUtils.copyFile(imageFile, new File(filePath, fileName));
				good.setGimage(fileName);
				// shop.setSimage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		good.setCatagroy3(catagroy3);
		Set<Good> gset = catagroy3.getGset();
		gset.add(good);
		catagroy3.setGset(gset);
		//good.setXcatagroy(x1catagroy);
		//System.out.println(imageFileFileName);
		//goodService.save(good);
		catagroy3Service.update(catagroy3);
		
		ServletActionContext.getRequest().setAttribute("msg", "(添加成功)");
		return getall();
	}

	
	
	public String getCheckbox1() {
		return checkbox1;
	}

	


	public List<Catagroy> getClist() {
		return clist;
	}


	public void setClist(List<Catagroy> clist) {
		this.clist = clist;
	}


	public String getCheckbox2() {
		return checkbox2;
	}



	public void setCheckbox2(String checkbox2) {
		this.checkbox2 = checkbox2;
	}



	public String getCheckbox3() {
		return checkbox3;
	}

	


	public List<Good> getGlist() {
		return glist;
	}

	

	public String getC3id() {
		return c3id;
	}


	public void setC3id(String c3id) {
		this.c3id = c3id;
	}


	public void setGlist(List<Good> glist) {
		this.glist = glist;
	}


	public void setCheckbox3(String checkbox3) {
		this.checkbox3 = checkbox3;
	}

	


	public PageResult getPageResult() {
		return pageResult;
	}


	public void setPageResult(PageResult pageResult) {
		this.pageResult = pageResult;
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
		GoodAction.default_size = default_size;
	}


	public String getCheckbox4() {
		return checkbox4;
	}



	public void setCheckbox4(String checkbox4) {
		this.checkbox4 = checkbox4;
	}



	public String getCheckbox5() {
		return checkbox5;
	}



	public void setCheckbox5(String checkbox5) {
		this.checkbox5 = checkbox5;
	}



	public String getCheckbox6() {
		return checkbox6;
	}



	public void setCheckbox6(String checkbox6) {
		this.checkbox6 = checkbox6;
	}



	public void setCheckbox1(String checkbox1) {
		this.checkbox1 = checkbox1;
	}



	public File getImageFile() {
		return imageFile;
	}


	public void setImageFile(File imageFile) {
		this.imageFile = imageFile;
	}


	public String getImageFileFileName() {
		return imageFileFileName;
	}


	public void setImageFileFileName(String imageFileFileName) {
		this.imageFileFileName = imageFileFileName;
	}


	public String getImageFileContentType() {
		return imageFileContentType;
	}


	public void setImageFileContentType(String imageFileContentType) {
		this.imageFileContentType = imageFileContentType;
	}


	public String[] getXg() {
		return xg;
	}

	public void setXg(String[] xg) {
		this.xg = xg;
	}

	
	public String[] getCheckbox() {
		return checkbox;
	}


	public void setCheckbox(String[] checkbox) {
		this.checkbox = checkbox;
	}


	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public String getCxprices() {
		return cxprices;
	}

	public void setCxprices(String cxprices) {
		this.cxprices = cxprices;
	}

	public String getXcatagroy() {
		return xcatagroy;
	}

	public void setXcatagroy(String xcatagroy) {
		this.xcatagroy = xcatagroy;
	}

}
