package com.henau.supermarket.catagroy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.henau.supermarket.catagroy.dao.Catagroy2Dao;
import com.henau.supermarket.catagroy.entity.Catagroy2;
import com.henau.supermarket.core.dao.impl.BaseDaoImpl;

public class Catagroy2DaoImpl extends BaseDaoImpl<Catagroy2> implements Catagroy2Dao{

	@Override
	public Catagroy2 findObjectByName(String name) {
		Session session = getSession();
		String hql="from Catagroy2 where name=?";
		Query query = session.createQuery(hql);
		query.setString(0, name);
		List<Catagroy2> list=query.list();
		if(list.size()>0){
			return (Catagroy2) query.list().get(0);
		}else{
			return null;
		}
	}

}
