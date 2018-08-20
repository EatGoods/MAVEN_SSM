<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>java小程序录界面</title>
<link  rel="stylesheet" type="text/css" href="<%= basePath %>/resources/css/style.css"/>
<script type="text/javascript" src="<%= basePath %>/resources/js/jquery2.js"></script>
<script type="text/javascript" src="<%= basePath %>/resources/js/cloud.js" ></script>
<script type="text/javascript" src="<%= basePath %>/resources/js/js.js"></script>
</head>

<body style="background-color:#1c77ac;background-image: url(<%= basePath %>/resources/images/light.png) background-repeat:no-repeat;background-position:center top;overflow:hidden;">
<div id="mainBody">
  <div id="cloud1" class="cloud"></div>
  <div id="cloud2" class="cloud"></div>
</div>
<div class="logintop"> <span>欢迎登录小程序后台</span>
</div>
<div class="loginbody"> <span class="systemlogo"></span>
  <div class="loginbox">
   <form action="${pageContext.request.contextPath }/LoginController/login" method="post">
	    <ul>
	      <li>
	        <input name="userName" type="text" class="loginuser" placeholder="admin"/>
	      </li>
	      <li>
	        <input name="password" type=password class="loginpwd" placeholder="密码"/>
	      </li>
	      <li>
	        <input type="submit" class="loginbtn" value="登录"/>
	      </li>
	    </ul>
    </form>
  </div>
</div>
<div class="loginbm">版权所有： 辰客网络</div>
</body>
</html>