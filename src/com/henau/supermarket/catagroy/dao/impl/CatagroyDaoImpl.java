package com.henau.supermarket.catagroy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.henau.supermarket.catagroy.dao.CatagroyDao;
import com.henau.supermarket.catagroy.entity.Catagroy;
import com.henau.supermarket.core.dao.impl.BaseDaoImpl;

public class CatagroyDaoImpl extends BaseDaoImpl<Catagroy> implements CatagroyDao{

	@Override
	public Catagroy findObjectByName(String name) {
		
		
		Session session = getSession();
		String hql="from Catagroy where name=?";
		Query query = session.createQuery(hql);
		query.setString(0, name);
		List<Catagroy> list=query.list();
		if(list.size()>0){
			return (Catagroy) query.list().get(0);
		}else{
			return null;
		}
		
	}

}
