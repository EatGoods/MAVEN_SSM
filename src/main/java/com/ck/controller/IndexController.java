package com.ck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("index")
public class IndexController {
	
	@RequestMapping("head")
	public String head(){
		return "head";
	}
	
	@RequestMapping("left")
	public String left(){
		return "left";
	}
	
	@RequestMapping("main")
	public String main(){
		return "main";
	}
}
