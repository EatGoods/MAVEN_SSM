package com.ck.service;

import java.util.List;

import com.ck.entity.User;

public interface UserService {
	
	public List<User> findAllUser();
	
	public List<User> saveUser(User user);
	
	public int daleteUser(User user);
	
	public int updateUser(User user);
}
