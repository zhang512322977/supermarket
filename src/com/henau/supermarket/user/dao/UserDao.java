package com.henau.supermarket.user.dao;

import com.henau.supermarket.core.dao.BaseDao;
import com.henau.supermarket.user.entity.User;





public interface UserDao extends BaseDao<User>{

	User findUserByUserNameAndPassword(String username, String password);

	User findUserByUserName(String username);
		
}
