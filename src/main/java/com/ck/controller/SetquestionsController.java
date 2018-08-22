package com.ck.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ck.entity.Setquestions;
import com.ck.service.SetquestionsService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@RestController
@RequestMapping("/setquestionsController")
public class SetquestionsController {
	
	@Resource
	private SetquestionsService setquestionsService;
	
	@RequestMapping(value="/Setquestions_management",produces="application/json;charset=UTF-8")
	public String findAll() {
        JSONArray array =new JSONArray();
		List<Setquestions> setquestions=setquestionsService.findAllSetquestions();
        JSONObject obj=new JSONObject();
        //前台通过key值获得对应的value值
        obj.put("code", "0");
        obj.put("date",setquestions);
        array.add(obj);
       return array.toString();
	}
}
