package com.ck.Http;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * 接受移动端发过来的http请求
 */
public class InputHttp {
	
	/**
	 * 版本号
	 *一般为固定的，主要是为了和Action进行凭借识别对应的controller
	 */
	private String version;
	/**
	 * 方法包名
	 */
	private String controller;
	/**
	 * 方法名
	 */
	private String method;	
	/**
	 * 时间戳
	 */
	private String timeStamp;	
	/**
	 * 请求参数
	 */
	private String req;
	/**
	 * 接口请求request
	 */
	private HttpServletRequest request;
	/**
	 * 接口请求response
	 */
	private HttpServletResponse response;
	/**
	 * 注入
	 */
	private Object dao;
 
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getController() {
		return controller;
	}
	public void setController(String controller) {
		this.controller = controller;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
	
	public String getReq() {
		return req;
	}
	public void setReq(String req) {
		this.req = req;
	}
	public Object getDao() {
		return dao;
	}
	public void setDao(Object dao) {
		this.dao = dao;
	}
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}	
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
 
	//构造函数
	public InputHttp(Map<String,String[]> map) throws IOException{
		this.version=map.get("Version")!=null?map.get("Version")[0]:"";
		this.controller=map.get("controller")!=null?map.get("controller")[0]:"";		
		this.method=map.get("Method")!=null?map.get("Method")[0]:"";				
		this.timeStamp=map.get("TimeStamp")!=null?map.get("TimeStamp")[0]:"";
		this.req=map.get("Req")!=null?map.get("Req")[0]:"";
 
	}

}
