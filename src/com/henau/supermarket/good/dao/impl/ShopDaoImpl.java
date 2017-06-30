package com.henau.supermarket.good.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.henau.supermarket.core.dao.impl.BaseDaoImpl;
import com.henau.supermarket.good.dao.ShopDao;
import com.henau.supermarket.good.entity.Shop;
import com.henau.supermarket.user.entity.User;


public class ShopDaoImpl extends BaseDaoImpl<Shop> implements ShopDao{

	@Override
	public List<Shop> findByOwer(User ower) {
		Session session = getSession();
		String hql="from Shop where ower=?";
		Query query = session.createQuery(hql);
		
		query.setString(0, ower.getUserid());
		List<Shop> list=query.list();
		if(list.size()>0){
			return list;
		}else{
			return null;
		}
		
	}

}
