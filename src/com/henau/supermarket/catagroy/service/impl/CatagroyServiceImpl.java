package com.henau.supermarket.catagroy.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henau.supermarket.catagroy.dao.CatagroyDao;
import com.henau.supermarket.catagroy.entity.Catagroy;
import com.henau.supermarket.catagroy.service.CatagroyService;
import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;
@Service
public class CatagroyServiceImpl   implements CatagroyService{
	@Resource
	private CatagroyDao catagroyDao;

	@Override
	public void save(Catagroy entity) {
		catagroyDao.save(entity);
	}

	@Override
	public void update(Catagroy entity) {
		catagroyDao.update(entity);	
	}

	@Override
	public void delete(Serializable id) {
		catagroyDao.delete(id);
		
	}

	@Override
	public Catagroy findObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return catagroyDao.findObjectById(id);
	}

	@Override
	public List<Catagroy> findObjects() {
		// TODO Auto-generated method stub
		return catagroyDao.findObjects();
	}

	@Override
	public List<Catagroy> findObjects(String hql, List<Object> parameters) {
		// TODO Auto-generated method stub
		return catagroyDao.findObjects(hql, parameters);
	}

	@Override
	public List<Catagroy> findObjects(QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return catagroyDao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return catagroyDao.getPageResult(queryHelper, pageNo, pageSize);
	}

	@Override
	public Catagroy findObjectByName(String name) {
		// TODO Auto-generated method stub
		return catagroyDao.findObjectByName(name);
	}	
	
	
	
}
