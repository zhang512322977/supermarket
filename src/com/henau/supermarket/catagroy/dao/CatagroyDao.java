package com.henau.supermarket.catagroy.dao;


import com.henau.supermarket.catagroy.entity.Catagroy;
import com.henau.supermarket.core.dao.BaseDao;


public interface CatagroyDao  extends BaseDao<Catagroy> {

	Catagroy findObjectByName(String name);

}
