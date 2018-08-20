package com.ck.service.imp;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ck.service.BaseService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

//通用Service类  提供基础增删改查方法
//readOnLy=true 为只读
@Transactional(readOnly=true)
public abstract class BaseServiceImp<T> implements BaseService<T> {
	
	private Mapper<T> mapper;

	public void setMapper(Mapper<T> mapper) {
		this.mapper = mapper;
	}

	@Transactional(readOnly=false)
	@Override
	public void save(T t) {
		this.mapper.insert(t);
	}

	@Transactional(readOnly=false)
	@Override
	public void delete(T t) {
		this.mapper.delete(t);
	}

	@Transactional(readOnly=false)
	@Override
	public void update(T t) {
		this.mapper.updateByPrimaryKey(t);
	}
	
	@Transactional(readOnly=false)
	@Override
	public List<T> findAll(){
		return this.mapper.selectAll();
	}

	@Transactional(readOnly=false)
	@Override
	public List<T> findByExample(Example example) {
		return this.mapper.selectByExample(example);
	}

	@Transactional(readOnly=false)
	@Override
	public T findByPrimaryKey(Serializable id) {
		return this.mapper.selectByPrimaryKey(id);
	}

}
