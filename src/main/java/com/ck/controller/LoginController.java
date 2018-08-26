package com.ck.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ck.entity.UserAdmin;
import com.ck.service.UserAdminService;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
	
	@Resource
	private UserAdminService userAadminService;
	
	@ResponseBody
	@RequestMapping(value="/login",method= RequestMethod.POST,produces="application/json;charset=UTF-8")
	public String login(@RequestBody Map<String, Object> map) {
		
		return"";
	}
}
