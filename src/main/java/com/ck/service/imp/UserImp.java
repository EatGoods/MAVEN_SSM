package com.ck.service.imp;

import java.util.List;

import javax.annotation.Resource;

import com.ck.entity.User;
import com.ck.service.UserService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

public class UserImp extends BaseServiceImp<User> implements UserService {
	
	@Override
	@Resource(name="userMapper")
	public void setMapper(Mapper<User> mapper) {
		// TODO Auto-generated method stub
		super.setMapper(mapper);
	}

	@Override
	public List<User> findAllUser() {
		List user=this.findAll();
		return user;
	}

	@Override
	public List<User> saveUser(User user) {
		Example example=new Example(User.class);
		example.createCriteria().andCondition("OpenId=", user.getOpenId());
		List list=this.findByExample(example);
		if(list==null) {
			this.save(user);
			example.createCriteria().andCondition("OpenId=", user.getOpenId());
			List lis=this.findByExample(example);
			return lis;
		}else {
			return list;
		}
	}

	@Override
	public int daleteUser(User user) {
		try {
			this.delete(user);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

	@Override
	public int updateUser(User user) {
		try {
			this.update(user);
		} catch (Exception e) {
			return 0;
		}
		return 1;
	}

}
