package com.henau.supermarket.catagroy.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henau.supermarket.catagroy.dao.Catagroy3Dao;
import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.catagroy.service.Catagroy3Service;
import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;
@Service
public class Catagroy3ServiceImpl  implements Catagroy3Service{
	@Resource
	private Catagroy3Dao catagroy3Dao;	
	
	@Override
	public void save(Catagroy3 entity) {
		catagroy3Dao.save(entity);
		
	}

	@Override
	public void update(Catagroy3 entity) {
		catagroy3Dao.update(entity);
		
	}

	@Override
	public void delete(Serializable id) {
		catagroy3Dao.delete(id);
		
	}

	@Override
	public Catagroy3 findObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return catagroy3Dao.findObjectById(id);
	}

	@Override
	public List<Catagroy3> findObjects() {
		// TODO Auto-generated method stub
		return catagroy3Dao.findObjects();
	}

	@Override
	public List<Catagroy3> findObjects(String hql, List<Object> parameters) {
		// TODO Auto-generated method stub
		return catagroy3Dao.findObjects(hql, parameters);
	}

	@Override
	public List<Catagroy3> findObjects(QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return catagroy3Dao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return catagroy3Dao.getPageResult(queryHelper, pageNo, pageSize);
	}

	@Override
	public Catagroy3 findObjectByName(String name) {
		// TODO Auto-generated method stub
		return catagroy3Dao.findObjectByName(name);
	}	
	
	
	
}
