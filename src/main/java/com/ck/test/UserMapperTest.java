package com.ck.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.DigestUtils;

import com.ck.mapper.DanQuestionsMapper;
import com.ck.mapper.UserMapper;
import com.ck.service.DanQuestionsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-mybatis.xml")
public class UserMapperTest {
	
	@Resource
	private UserMapper usermapper;
	@Resource
	private DanQuestionsMapper DaUserMapper;
	@Resource
	private DanQuestionsService danquestions;
	
	@Test
	public void findAll() {
		//查询所有
		System.out.println("danquestions="+this.danquestions.findAllDanQuestions().toString());
	}
	
	public void delete() {
		//根据ID删除数据
		this.usermapper.deleteByPrimaryKey(1);
	}
	
	
	public void save() {
		//新增数据
		String str="";
		DigestUtils.md5DigestAsHex(str.getBytes());//使用MD5加密
	}

}
