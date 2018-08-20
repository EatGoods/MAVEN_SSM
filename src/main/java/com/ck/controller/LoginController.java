package com.ck.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ck.entity.UserAdmin;
import com.ck.service.UserAdminService;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
	
	@Resource
	private UserAdminService userAadminService;
	
	@RequestMapping(value="/login",method= {RequestMethod.GET,RequestMethod.POST})
	public String login(UserAdmin userAdmin,HttpSession session) {
		System.out.println("123");
		UserAdmin Loginuser=this.userAadminService.validateUserAdmin(userAdmin);
		if(Loginuser!=null) {
			session.setAttribute("Loginuser", Loginuser);
			return "index";
		}else {
			return "login";
		}
	}
}
