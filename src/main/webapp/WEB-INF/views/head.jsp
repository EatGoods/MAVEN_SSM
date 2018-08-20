<%@page import="com.ck.entity.UserAdmin"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	UserAdmin user=(UserAdmin)request.getSession().getAttribute("Loginuser");
%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人格障碍诊断</title>
<link rel="stylesheet" type="text/css" href="../resources/css/public.css" />
<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/public.js"></script>
<script type="text/javascript" src="../resources/js/external.js"></script>

</head>

<body>
	<!-- 头部 -->
	<div class="head">
		<div class="headL">
			<img class="headLogo" src="../resources/images/banner2.png"/>
		</div>
		<div class="headR">
	    <a href="login" target="_parent">【退出】</a>
		</div>
	</div>
    <div class="user">
    <span><%=user.getUserName()%></span>
    </div> 
    
</body>

</html>