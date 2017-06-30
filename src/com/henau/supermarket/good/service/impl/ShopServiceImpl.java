package com.henau.supermarket.good.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;
import com.henau.supermarket.good.dao.ShopDao;
import com.henau.supermarket.good.entity.Shop;
import com.henau.supermarket.good.service.ShopService;
import com.henau.supermarket.user.entity.User;

@Service("shopService")
public class ShopServiceImpl  implements ShopService {
	@Resource
	private ShopDao shopDao;
	
	@Override
	public void save(Shop entity) {
		shopDao.save(entity);
		
	}

	@Override
	public void update(Shop entity) {
		shopDao.update(entity);
		
	}

	@Override
	public void delete(Serializable id) {
	
		shopDao.delete(id);
		
	}

	@Override
	public Shop findObjectById(Serializable id) {
		
		return shopDao.findObjectById(id);
	}

	@Override
	public List<Shop> findObjects() {
		
		return shopDao.findObjects();
	}

	@Override
	public List<Shop> findObjects(String hql, List<Object> parameters) {
		
		return shopDao.findObjects(hql, parameters);
	}

	@Override
	public List<Shop> findObjects(QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return shopDao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return shopDao.getPageResult(queryHelper, pageNo, pageSize);
	}

	@Override
	public List<Shop> findByOwer(User ower) {
	
		return shopDao.findByOwer(ower);
	}
		
}
