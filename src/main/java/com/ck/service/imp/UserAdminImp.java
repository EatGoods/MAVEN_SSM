package com.ck.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import com.ck.entity.UserAdmin;
import com.ck.service.UserAdminService;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.entity.Example;

@Service("userAdminService")
@Transactional(readOnly=true)
public class UserAdminImp extends BaseServiceImp<UserAdmin> implements UserAdminService {
	
	@Resource(name="userAdminMapper")
	@Override
	public void setMapper(Mapper<UserAdmin> mapper) {
		super.setMapper(mapper);
	}
	
	@Override
	public UserAdmin validateUserAdmin(UserAdmin userAdmin) {
		//登陆信息
		Example example=new Example(UserAdmin.class);
		example.createCriteria()
			.andCondition("userName=", userAdmin.getUserName())
			.andCondition("password=", userAdmin.getPassword())
			.andCondition("password_MD5=", DigestUtils.md5DigestAsHex(userAdmin.getPassword().getBytes()));
		List<UserAdmin> li=this.findByExample(example);
		return li!=null&&li.size()>0?li.get(0):null;
	}
}
