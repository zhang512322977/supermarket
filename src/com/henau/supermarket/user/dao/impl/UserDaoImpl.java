package com.henau.supermarket.user.dao.impl;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.henau.supermarket.core.dao.impl.BaseDaoImpl;
import com.henau.supermarket.user.dao.UserDao;
import com.henau.supermarket.user.entity.User;




public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{

	@Override
	public User findUserByUserNameAndPassword(String username, String password) {
		// TODO Auto-generated method stub
		
		User user = null ;
		return user;
	}

	@Override
	public User findUserByUserName(String username) {
		//通过用户名查询
		Session session = getSession();
		String hql="from User where user_name=?";
		Query query = session.createQuery(hql);
		query.setString(0, username);
		List<User> list=query.list();
		if(list.size()>0){
			return (User) query.list().get(0);
		}else{
			return null;
		}
	}

}
