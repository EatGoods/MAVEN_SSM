package com.ck.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ck.Http.OutputHttp;
import com.ck.entity.User;

import net.sf.json.JSONArray;


@Controller
@RequestMapping("/user")
public class UserController {

	@ResponseBody
	@RequestMapping(value="/add",method= RequestMethod.POST,produces="application/json;charset=UTF-8")
	public String saveUser(@RequestBody Map<String,Object> map) {
		OutputHttp out=new OutputHttp();
		System.out.println(map.get("id"));
		Map ma=out.setStatusSuccess(null, "请求成功");
		String data=JSONArray.fromObject(ma).toString();
		return data;
	}
}
