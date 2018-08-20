package com.ck.service;

import java.io.Serializable;
import java.util.List;

import tk.mybatis.mapper.entity.Example;

public interface BaseService<T> {
	
	//新增
	public void save(T t);
	
	//删除
	public void delete(T t);
	
	//修改
	public void update(T t);
	
	//查询所有
	public List<T> findAll();
	
	//条件查询
	public List<T> findByExample(Example example);
	
	//根据ID查询
	public T findByPrimaryKey(Serializable id);
	
	//分页查询
}
