package com.henau.supermarket.catagroy.service;


import com.henau.supermarket.catagroy.entity.Catagroy;
import com.henau.supermarket.core.service.BaseService;

public interface CatagroyService extends BaseService<Catagroy> {

	Catagroy findObjectByName(String name);

	
	
}
