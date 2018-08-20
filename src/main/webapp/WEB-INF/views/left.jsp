<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人格障碍诊断</title>
<link rel="stylesheet" type="text/css" href="../resources/css/public.css">
<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/public.js"></script>
<head></head>

<body id="bg">
	<!-- 左边节点 -->
	<div class="container">
		<div class="leftsidebar_box">
			<a href="main.html" target="main">
            <div class="line">
		    <img class="icon1" src="../resources/images/coin01.png" />
            <img class="icon2" src="../resources/images/coin02.png" />&nbsp;&nbsp;首页
			</div>
            </a>
            <!--症状诊断-->
           <dl class="system_log">
				<dt>
					<img class="icon1" src="../resources/images/coin15.png" />
                    <img class="icon2" src="../resources/images/coin16.png" />
                     	套题管理
                    <img class="icon3" src="../resources/images/coin19.png" />
                    <img class="icon4" src="../resources/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="${pageContext.request.contextPath }/setquestionsController/Setquestions_management" target="main" class="cks">心理诊断测试</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
			</dl>
            <!--档案管理-->
            <dl class="system_log">
				<dt>
					<img class="icon1" src="../resources/images/coin09.png" />
                    <img class="icon2" src="../resources/images/coin10.png" />
                     		题库管理
                    <img class="icon3" src="../resources/images/coin19.png" />
                    <img class="icon4" src="../resources/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">单选管理</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">多选管理</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
			</dl>
        <!--用户管理-->
			<dl class="system_log">
				<dt>
					<img class="icon1" src="../resources/images/coin07.png" />
                    <img class="icon2" src="../resources/images/coin08.png" />
                     		用户管理
                    <img class="icon3" src="../resources/images/coin19.png" />
                    <img class="icon4" src="../resources/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">微信用户</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">用户管理</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">角色管理</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
			</dl>
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="../resources/images/coin05.png" />
                    <img class="icon2" src="../resources/images/coin06.png" />
                     		数据管理
                     <img class="icon3" src="../resources/images/coin19.png" />
                     <img class="icon4" src="../resources/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a class="cks" href="/maven_ssm/leftController/management/User_management" target="main">预警信息管理</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a class="cks" href="/maven_ssm/leftController/management/User_management" target="main">数据管理</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a class="cks" href="/maven_ssm/leftController/management/User_management" target="main">数据统计</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
			</dl>
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="../resources/images/coin03.png" />
                    <img class="icon2" src="../resources/images/coin04.png" />
                     网站信息管理
                     <img class="icon3" src="../resources/images/coin19.png" />
                     <img class="icon4" src="../resources/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">首页</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">关于我们</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">心理新闻</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">资源下载</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
			</dl>
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="../resources/images/coinL1.png" />
                    <img class="icon2" src="../resources/images/coinL2.png" />
                     系统设置
                    <img class="icon3" src="../resources/images/coin19.png" />
                    <img class="icon4" src="../resources/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="../resources/images/coin111.png" />
                    <img class="coin22" src="../resources/images/coin222.png" />
                    <a href="/maven_ssm/leftController/management/User_management" target="main" class="cks">友情链接</a>
                    <img class="icon5" src="../resources/images/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
</body>
</html>
