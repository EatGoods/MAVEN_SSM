package com.ck.entity;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Id;

@Table(name="KC_UserAdmin")
public class UserAdmin {
	
	  @Id
	  private int Id;//用户ID
	  
	  @Column(name="userName")
	  private String userName;//用户登录名
	  
	  @Column(name="password")
	  private String password;//用户登录密码
	  
	  @Column(name="password_MD5")
	  private String password_MD5;//加密密码
	  
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword_MD5() {
		return password_MD5;
	}
	public void setPassword_MD5(String password_MD5) {
		this.password_MD5 = password_MD5;
	}
	  
	  
}
