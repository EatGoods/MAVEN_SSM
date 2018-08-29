package com.ck.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ck.Http.OutputHttp;
import com.ck.entity.UserAdmin;
import com.ck.service.UserAdminService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/Login")
public class LoginController {
	
	@Resource
	private UserAdminService userAadminService;
	private Map mp;
	
	@ResponseBody
	@RequestMapping(value="/login",method= RequestMethod.POST,produces="application/json;charset=UTF-8")
	public String login(@RequestBody Map<String, Object> map) {
		OutputHttp out=new OutputHttp();
		UserAdmin user=new UserAdmin();
		try {
			user.setUserName(map.get("name").toString());
			user.setPassword(map.get("password").toString());
			List<UserAdmin> list=(List<UserAdmin>) userAadminService.validateUserAdmin(user);
			if(list!=null&&list.size()>0) {
				mp=out.setStatusSuccess(list, "请求成功");
				String data=JSONArray.fromObject(mp).toString();
				return data;
			}else {
				mp=out.setRequest_failed("账号或密码错误");
				String data=JSONArray.fromObject(mp).toString();
				return data;
			}
		} catch (Exception e) {
			mp=out.setRequest_failed("账号或密码错误");
			String data=JSONArray.fromObject(mp).toString();
			return data;
		}
		
	}
}
