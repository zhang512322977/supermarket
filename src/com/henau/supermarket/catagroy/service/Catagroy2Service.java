package com.henau.supermarket.catagroy.service;


import com.henau.supermarket.catagroy.entity.Catagroy2;
import com.henau.supermarket.core.service.BaseService;

public interface Catagroy2Service extends BaseService<Catagroy2> {

	Catagroy2 findObjectByName(String name);

	
	
}
