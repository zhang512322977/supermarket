package com.henau.supermarket.core.dao;

import java.io.Serializable;
import java.util.List;

import com.henau.supermarket.core.page.PageResult;
import com.henau.supermarket.core.util.QueryHelper;



public interface BaseDao<T> {
	
	//����
	public void save(T entity);
	//����
	public void update(T entity);
	//����idɾ��
	public void delete(Serializable id);
	//����id����
	public T findObjectById(Serializable id);
	//�����б�
	public List<T> findObjects();
	//������ѯʵ���б�
	public List<T> findObjects(String hql, List<Object> parameters);
	//������ѯʵ���б�--��ѯ����queryHelper
	public List<T> findObjects(QueryHelper queryHelper);
	//��ҳ������ѯʵ���б�--��ѯ����queryHelper
	public PageResult getPageResult(QueryHelper queryHelper, int pageNo, int pageSize);

}

