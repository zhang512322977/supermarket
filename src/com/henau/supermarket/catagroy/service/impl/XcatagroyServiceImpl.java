package com.henau.supermarket.catagroy.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.henau.supermarket.catagroy.dao.XcatagroyDao;
import com.henau.supermarket.catagroy.entity.Xcatagroy;
import com.henau.supermarket.catagroy.service.XcatagroyService;
import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.service.impl.BaseServiceImpl;
import com.henau.supermarket.core.util.QueryHelper;
@Service("xcatagroyService")
public class XcatagroyServiceImpl   implements XcatagroyService{
    @Resource 
	private XcatagroyDao xcatagroyDao;

	@Override
	public void save(Xcatagroy entity) {
		// TODO Auto-generated method stub
		xcatagroyDao.save(entity);
	}

	@Override
	public void update(Xcatagroy entity) {
		// TODO Auto-generated method stub
		xcatagroyDao.update(entity);
	}

	@Override
	public void delete(Serializable id) {
		xcatagroyDao.delete(id);
		
	}

	@Override
	public Xcatagroy findObjectById(Serializable id) {
		// TODO Auto-generated method stub
		return xcatagroyDao.findObjectById(id);
	}

	@Override
	public List<Xcatagroy> findObjects() {
		// TODO Auto-generated method stub
		return xcatagroyDao.findObjects();
	}

	@Override
	public List<Xcatagroy> findObjects(String hql, List<Object> parameters) {
		// TODO Auto-generated method stub
		return xcatagroyDao.findObjects(hql, parameters);
	}

	@Override
	public List<Xcatagroy> findObjects(QueryHelper queryHelper) {
		// TODO Auto-generated method stub
		return xcatagroyDao.findObjects(queryHelper);
	}

	@Override
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo,
			int pageSize) {
		// TODO Auto-generated method stub
		return xcatagroyDao.getPageResult(queryHelper, pageNo, pageSize);
	}
}
