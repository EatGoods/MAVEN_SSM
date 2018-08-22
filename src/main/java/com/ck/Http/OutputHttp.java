package com.ck.Http;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*接口输出基类*/
public class OutputHttp {
	
	//请求成功
	public static final String Request_success="200";
	//请求失败
	public static final String Request_failed="400";
	//服务器异常
	public static final String Server_exception="500";
	
	//标识码
	private String status;
	//信息
	private String msg;
	//返回数据
	private Object data;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	/**
	 * @描述 设置失败状态和消息
	 */
	public Map setRequest_failed(String msg) {
		this.status = Request_failed;
		this.msg=msg;
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("msg", msg);
		map.put("code", status);
		return map;
	}
	/**
	 * @描述 设置服务器错误状态和消息
	 */
	public void setServer_exception(String msg) {
		this.status = Server_exception;
		this.msg=msg;
	}
	/**
	 * @描述 设置成功状态
	 */
	public void setRequest_success() {
		this.status = Request_success;
	}
	/**
	 * @描述 设置成功状态并插入data数据
	 * @author quzf
	 */
	public Map setStatusSuccess(Object data,String msg) {
		this.status = Request_success;
		this.data=data;
		this.msg=msg;
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("msg", msg);
		map.put("data", data);
		map.put("code", status);
		return map;
	}
}
