<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>辰客Java面试刷题小程序后台管理系统</title>
</head>
<frameset rows="100,*" cols="*" scrolling="No" framespacing="0" frameborder="no" border="0">
	<!-- 引用头部 -->
		<frame src="/maven_ssm/index/head" name="head" id="mainFrame" title="mainFrame">
	<!-- 引用左边和主体部分 --> 
	<frameset rows="100*" cols="220,*" scrolling="No" framespacing="0" frameborder="no" border="0"> 
		<frame src="/maven_ssm/index/left" name="left" id="mainFrame" title="mainFrame">
		<frame src="/maven_ssm/index/main" name="main" scrolling="yes" noresize="noresize" id="rightFrame" title="rightFrame">
	</frameset>
</frameset>
<noframes></noframes>
</html>