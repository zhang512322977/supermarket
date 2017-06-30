package com.henau.supermarket.good.dao;

import java.util.List;

import com.henau.supermarket.core.dao.BaseDao;
import com.henau.supermarket.good.entity.Shop;
import com.henau.supermarket.user.entity.User;




public interface ShopDao extends BaseDao<Shop>{

	List<Shop> findByOwer(User ower);


		
}
