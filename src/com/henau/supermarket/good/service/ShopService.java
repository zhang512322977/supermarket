package com.henau.supermarket.good.service;

import java.util.List;

import com.henau.supermarket.core.service.BaseService;
import com.henau.supermarket.good.entity.Shop;
import com.henau.supermarket.user.entity.User;


public interface ShopService extends BaseService<Shop>{

	List<Shop> findByOwer(User ower);

	
}
