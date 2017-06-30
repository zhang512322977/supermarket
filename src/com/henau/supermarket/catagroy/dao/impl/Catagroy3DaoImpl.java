package com.henau.supermarket.catagroy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.henau.supermarket.catagroy.dao.Catagroy3Dao;
import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.core.dao.impl.BaseDaoImpl;

public class Catagroy3DaoImpl extends BaseDaoImpl<Catagroy3> implements Catagroy3Dao{

	@Override
	public Catagroy3 findObjectByName(String name) {
		Session session = getSession();
		String hql="from Catagroy3 where name=?";
		Query query = session.createQuery(hql);
		query.setString(0, name);
		List<Catagroy3> list=query.list();
		if(list.size()>0){
			return (Catagroy3) query.list().get(0);
		}else{
			return null;
		}
	}

}
