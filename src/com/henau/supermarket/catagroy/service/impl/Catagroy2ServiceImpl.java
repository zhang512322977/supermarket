package com.henau.supermarket.catagroy.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henau.supermarket.catagroy.dao.Catagroy2Dao;
import com.henau.supermarket.catagroy.entity.Catagroy2;
import com.henau.supermarket.catagroy.service.Catagroy2Service;
import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;
@Service
public class Catagroy2ServiceImpl  implements Catagroy2Service{
	@Resource
	private Catagroy2Dao catagroy2Dao;

	@Override
	public void save(Catagroy2 entity) {
		catagroy2Dao.save(entity);
		
	}

	@Override
	public void update(Catagroy2 entity) {
		catagroy2Dao.update(entity);
		
	}

	@Override
	public void delete(Serializable id) {
		catagroy2Dao.delete(id);
		
	}

	@Override
	public Catagroy2 findObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return catagroy2Dao.findObjectById(id);
	}

	@Override
	public List<Catagroy2> findObjects() {
		// TODO Auto-generated method stub
		return catagroy2Dao.findObjects();
	}

	@Override
	public List<Catagroy2> findObjects(String hql, List<Object> parameters) {
		// TODO Auto-generated method stub
		return catagroy2Dao.findObjects(hql, parameters);
	}

	@Override
	public List<Catagroy2> findObjects(QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return catagroy2Dao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return catagroy2Dao.getPageResult(queryHelper, pageNo, pageSize);
	}

	@Override
	public Catagroy2 findObjectByName(String name) {
		// TODO Auto-generated method stub
		return catagroy2Dao.findObjectByName(name);
	}	
	
	
	
}
