package com.henau.supermarket.good.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.henau.supermarket.core.action.BaseAction;
import com.henau.supermarket.good.entity.Shop;
import com.henau.supermarket.good.service.ShopService;
import com.henau.supermarket.user.entity.User;


public class ShopAction extends BaseAction {
	@Resource
	private ShopService shopService;

	private Shop shop;

	private File logoFile;
	private String logoFileFileName;
	private String logoFileContentType;

	private File shopFile;
	private String shopFileFileName;
	private String shopFileContentType;

	private File xxFile;
	private String xxFileFileName;
	private String xxFileContentType;

	private File aFile;
	private String aFileFileName;
	private String aFileContentType;

	private File bFile;
	private String bFileFileName;
	private String bFileContentType;

	private File cFile;
	private String cFileFileName;
	private String cFileContentType;

	private String province;
	private String city;
	private String county;

	
	private String xiangxi;

	public String next() {
		Shop _shop = (Shop) ServletActionContext.getRequest().getSession()
				.getAttribute("_shop");
		if (_shop != null) {
			if (shop != null) {
				_shop.setFaRenShenFenHaoMa(shop.getFaRenShenFenHaoMa());
				_shop.setJingYingFanWei(shop.getJingYingFanWei());
			}
		}
		if (aFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + aFileFileName;
			try {
				FileUtils.copyFile(aFile, new File(filePath, fileName));
				_shop.setFaRenShenFenZhengTu(fileName);
				// shop.setSimage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (bFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + bFileFileName;
			try {
				FileUtils.copyFile(bFile, new File(filePath, fileName));
				_shop.setZiZhaoTu(fileName);
				// shop.setSimage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (cFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + cFileFileName;
			try {
				FileUtils.copyFile(cFile, new File(filePath, fileName));
				_shop.setXuKeZhengTu(fileName);
				// shop.setSimage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		shopService.save(_shop);
		
		return getall();
	}

	public String getall() {
		User ower = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		List<Shop> list = shopService.findByOwer(ower);
		if (list == null) {
			list = new ArrayList<Shop>();
		}
		ServletActionContext.getRequest().setAttribute("list", list);
		System.out.println(list.size());
		return "shop";

	}

	public String enter(){
		Shop currentshop = shopService.findObjectById(shop.getSid());
		ServletActionContext.getRequest().getSession().setAttribute("shop", currentshop);
		return "";
	} 
	
	// 编辑
	public String edit() {

		// List<Shop> list = shopService.findByOwer(ower);
		Shop c_shop = shopService.findObjectById(shop.getSid());
		ServletActionContext.getRequest().setAttribute("shop", c_shop);
		return "shop-add";
	}

	// 添加
	public String add() {

		System.out.println(shop);
		
		User ower = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		if (ower != null) {
			shop.setOwer(ower);
		} else {
			return "success";
		}

		System.out.println(shopFileFileName);
		System.out.println(xxFileFileName);
		System.out.println(logoFileFileName);
		shop.setAddress(province + "-" + city + "-" + county + "-" + xiangxi);
		if (shopFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + shopFileFileName;
			try {
				FileUtils.copyFile(shopFile, new File(filePath, fileName));

				shop.setSimage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (logoFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + logoFileFileName;
			try {
				FileUtils.copyFile(logoFile, new File(filePath, fileName));

				shop.setLimage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (xxFile != null) {
			String filePath = ServletActionContext.getServletContext()
					.getRealPath("imgages");
			String uuid = UUID.randomUUID().toString().replace("-", "");
			String fileName = uuid + "-" + xxFileFileName;
			try {
				FileUtils.copyFile(xxFile, new File(filePath, fileName));

				shop.setXximage(fileName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		ServletActionContext.getRequest().getSession()
				.setAttribute("_shop", shop);
		// shopService.save(shop);

		return "next";
	}

	public String getXiangxi() {
		return xiangxi;
	}

	public void setXiangxi(String xiangxi) {
		this.xiangxi = xiangxi;
	}

	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}


	public File getaFile() {
		return aFile;
	}

	public void setaFile(File aFile) {
		this.aFile = aFile;
	}

	public String getaFileFileName() {
		return aFileFileName;
	}

	public void setaFileFileName(String aFileFileName) {
		this.aFileFileName = aFileFileName;
	}

	public String getaFileContentType() {
		return aFileContentType;
	}

	public void setaFileContentType(String aFileContentType) {
		this.aFileContentType = aFileContentType;
	}

	public File getbFile() {
		return bFile;
	}

	public void setbFile(File bFile) {
		this.bFile = bFile;
	}

	public String getbFileFileName() {
		return bFileFileName;
	}

	public void setbFileFileName(String bFileFileName) {
		this.bFileFileName = bFileFileName;
	}

	public String getbFileContentType() {
		return bFileContentType;
	}

	public void setbFileContentType(String bFileContentType) {
		this.bFileContentType = bFileContentType;
	}

	public File getcFile() {
		return cFile;
	}

	public void setcFile(File cFile) {
		this.cFile = cFile;
	}

	public String getcFileFileName() {
		return cFileFileName;
	}

	public void setcFileFileName(String cFileFileName) {
		this.cFileFileName = cFileFileName;
	}

	public String getcFileContentType() {
		return cFileContentType;
	}

	public void setcFileContentType(String cFileContentType) {
		this.cFileContentType = cFileContentType;
	}


	public File getLogoFile() {
		return logoFile;
	}

	public File getXxFile() {
		return xxFile;
	}

	public void setXxFile(File xxFile) {
		this.xxFile = xxFile;
	}

	public String getXxFileFileName() {
		return xxFileFileName;
	}

	public void setXxFileFileName(String xxFileFileName) {
		this.xxFileFileName = xxFileFileName;
	}

	public String getXxFileContentType() {
		return xxFileContentType;
	}

	public void setXxFileContentType(String xxFileContentType) {
		this.xxFileContentType = xxFileContentType;
	}

	public void setLogoFile(File logoFile) {
		this.logoFile = logoFile;
	}

	public String getLogoFileFileName() {
		return logoFileFileName;
	}

	public void setLogoFileFileName(String logoFileFileName) {
		this.logoFileFileName = logoFileFileName;
	}

	public String getLogoFileContentType() {
		return logoFileContentType;
	}

	public void setLogoFileContentType(String logoFileContentType) {
		this.logoFileContentType = logoFileContentType;
	}

	public File getShopFile() {
		return shopFile;
	}

	public void setShopFile(File shopFile) {
		this.shopFile = shopFile;
	}

	public String getShopFileFileName() {
		return shopFileFileName;
	}

	public void setShopFileFileName(String shopFileFileName) {
		this.shopFileFileName = shopFileFileName;
	}

	public String getShopFileContentType() {
		return shopFileContentType;
	}

	public void setShopFileContentType(String shopFileContentType) {
		this.shopFileContentType = shopFileContentType;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

}
