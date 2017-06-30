package com.henau.supermarket.catagroy.dao;


import com.henau.supermarket.catagroy.entity.Catagroy2;
import com.henau.supermarket.core.dao.BaseDao;


public interface Catagroy2Dao  extends BaseDao<Catagroy2> {

	Catagroy2 findObjectByName(String name);

}
