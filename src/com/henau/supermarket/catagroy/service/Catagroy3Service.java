package com.henau.supermarket.catagroy.service;


import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.core.service.BaseService;

public interface Catagroy3Service extends BaseService<Catagroy3> {

	Catagroy3 findObjectByName(String name);

	
	
}
