package com.ck.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ck.entity.Setquestions;
import com.ck.service.SetquestionsService;

@Controller
@RequestMapping("/setquestionsController")
public class SetquestionsController {
	
	@Resource
	private SetquestionsService setquestionsService;
	
	@RequestMapping("/Setquestions_management")
	public String findAll(Map<String, List<Setquestions>> map) {
		List<Setquestions> setquestions=setquestionsService.findAllSetquestions();
		map.put("setquestions", setquestions);
		System.out.println(setquestions.size());
		return "/Setquestions/Setquestions_management";
	}
	
}
