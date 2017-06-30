package com.henau.supermarket.good.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;
import com.henau.supermarket.good.dao.GoodDao;
import com.henau.supermarket.good.entity.Good;
import com.henau.supermarket.good.service.GoodService;
@Service("goodService")
public class GoodServiceImpl implements GoodService {
	@Resource
	private GoodDao goodDao;
	@Override
	public void save(Good entity) {
		// TODO Auto-generated method stub
		goodDao.save(entity);
	}

	@Override
	public void update(Good entity) {
		// TODO Auto-generated method stub
		goodDao.update(entity);
	}

	@Override
	public void delete(Serializable id) {
		// TODO Auto-generated method stub
		goodDao.delete(id);
	}

	@Override
	public Good findObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return goodDao.findObjectById(id);
	}

	@Override
	public List<Good> findObjects() {
		
		return goodDao.findObjects();
	}

	@Override
	public List<Good> findObjects(String hql, List<Object> parameters) {
		// TODO Auto-generated method stub
		return goodDao.findObjects(hql, parameters);
	}

	@Override
	public List<Good> findObjects(QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return goodDao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return goodDao.getPageResult(queryHelper, pageNo, pageSize);
	}

}
