package com.ck.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ck.Http.OutputHttp;
import com.ck.entity.Setquestions;
import com.ck.service.SetquestionsService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;

@Controller
@RequestMapping("/setquestionsController")
public class SetquestionsController {
	
	@Resource
	private SetquestionsService setquestionsService;
	
	@ResponseBody
	@RequestMapping(value="/Setquestions_management",produces="application/json;charset=UTF-8")
	public String findAll() {
		OutputHttp output=new OutputHttp();
		System.out.println("123");
		try {
			List<Setquestions> setquestions=setquestionsService.findAllSetquestions();
			Map map=output.setStatusSuccess(setquestions, "请求成功");
			String data=JSONArray.fromObject(map).toString();
			return data;
		} catch (Exception e) {
			Map map=output.setRequest_failed("请求失败");
			String data=JSONArray.fromObject(map).toString();
			return data;
		}
       
	}
}
