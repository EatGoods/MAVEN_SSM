package com.ck.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="CK_User")
public class User {
	
	  @Id
	  private int Id;
	  
	  @Column(name="NickName")
	  private String NickName;//用户昵称',
	  
	  @Column(name="AvatarUrl")
	  private String AvatarUrl;//用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表132*132正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。
	  
	  @Column(name="Gender")
	  private int Gender;//用户的性别，值为1时是男性，值为2时是女性，值为0时是未知
	  
	  @Column(name="City")
	  private String City;//用户所在城市',
	  
	  @Column(name="Province")
	  private String Province;//用户所在省份',
	  
	  @Column(name="Country")
	  private String Country;//用户所在国家',
	  
	  @Column(name="Language")
	  private String Language;//用户的语言，简体中文为zh_CN',
	  
	  @Column(name="OpenId")
	  private int OpenId;//用户openId，用来获取以上信息',
	  
	  @Column(name="PhoneNumber")
	  private int PhoneNumber;//用户手机号
	  
	  @Column(name="User_addTime")
	  private String User_addTime;//用户创建时间
	  
	  @Column(name="Balance")
	  private String Balance;//用户余额
	  
	public int getId() {
		return Id;
	}
	public void setId(int userId) {
		Id = userId;
	}
	public String getNickName() {
		return NickName;
	}
	public void setNickName(String nickName) {
		NickName = nickName;
	}
	public String getAvatarUrl() {
		return AvatarUrl;
	}
	public void setAvatarUrl(String avatarUrl) {
		AvatarUrl = avatarUrl;
	}
	public int getGender() {
		return Gender;
	}
	public void setGender(int gender) {
		Gender = gender;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getProvince() {
		return Province;
	}
	public void setProvince(String province) {
		Province = province;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String language) {
		Language = language;
	}
	public int getOpenId() {
		return OpenId;
	}
	public void setOpen_Id(int openId) {
		OpenId = openId;
	}
	public int getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(int phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getUser_addTime() {
		return User_addTime;
	}
	public void setUser_addTime(String user_addTime) {
		User_addTime = user_addTime;
	}
	public String getBalance() {
		return Balance;
	}
	public void setBalance(String balance) {
		Balance = balance;
	}
}
