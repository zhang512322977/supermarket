package com.henau.supermarket.catagroy.dao;


import com.henau.supermarket.catagroy.entity.Catagroy3;
import com.henau.supermarket.core.dao.BaseDao;


public interface Catagroy3Dao  extends BaseDao<Catagroy3> {

	Catagroy3 findObjectByName(String name);

}
