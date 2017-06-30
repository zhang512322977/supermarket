package com.henau.supermarket.user.service;

import java.io.Serializable;
import java.util.List;

import com.henau.supermarket.core.exception.ServiceException;
import com.henau.supermarket.user.entity.User;


public interface UserService {

	//新增
	public void save(User user);
	//更新
	public void update(User user);
	//根据id删除
	public void delete(Serializable id);
	//根据id查找
	public User findObjectById(Serializable id);
	//查找列表
	public List<User> findObjects() throws ServiceException;
	//导出用户列表
	/*public void exportExcel(List<User> userList, ServletOutputStream outputStream);
	//导入用户列表
	public void importExcel(File userExcel, String userExcelFileName);
	*//**
	 * 根据帐号和用户id查询用户
	 * @param id 用户ID
	 * @param account 用户帐号
	 * @return 用户列表
	 *//*
	public List<User> findUserByAccountAndId(String id, String account);
	
	//保存用户及其对应的角色
	public void saveUserAndRole(User user, String... roleIds);
	//保存用户及其对应的角色
	public void updateUserAndRole(User user, String... roleIds);
	//根据用户id获取该用户对应的所有用户角色

	//根据用户的帐号和密码查询用户列表
	public List<User> findUserByAccountAndPass(String account, String password);*/
	//根据账号和密码查询用户
	public User findUserByUserNameAndPassword(String username, String password);
	//根据账号查询用户
	public User findUserByUserName(String username);

}
