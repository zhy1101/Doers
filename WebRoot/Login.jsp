<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Doers登录</title>
<!-- Custom Theme files -->
<link href="css/login_style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
</head>
<body>
<!--header start here-->
<div class="login-form">
			<div class="top-login">
				<span><img src="img/group.png" alt=""/></span>
			</div>
			<h1>Doers ~ 登录</h1>
			<div class="login-top">
			<form action="${pageContext.request.contextPath}/userAction_login" method="post">
				<div class="login-ic">
					<i ></i>
					<input type="text"  value="用户" name="user_name"/>
					<div class="clear"> </div>
				</div>
				<div class="login-ic">
					<i class="icon"></i>
					<input type="password"  value="密码" name="password"/>
					<div class="clear"> </div>
				</div>
				<div class="log-bwn">
					<input type="submit"  value="立即登录" >
				</div>
				</form>
				<font color="red"><s:property value="exception.message"/></font>
			</div>
			<p class="copy">© 2017 HDU Doers</p>
</div>		
<!--header start here-->
</body>
</html>