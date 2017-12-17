<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${production.productionTitle}</title>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
	
	<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
	<script src="../js/jquery.scrollto.min.js"></script>
	<script src="../js/jquery.easing.min.js"></script>
	<script src="../js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
	<script type="text/javascript" src="../js/main.js"></script>
</head>
<body>
<header>
		<nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="hiview.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/index.jsp">首页</a></li>
                    <li><a href="hiview.html">Do 博物</a></li>
                    <li><a href="hiview.html">Do 服务</a></li>
                    <li><a href="hiview.html">Do 活动</a></li>
                    <li><a href="hiview.html">Do 交易</a></li>
                    <li><a href="/Doers/userHouse/userHouse.jsp">Do Myself</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="搜索">
                </form>
               <lable id = "ready_login" style="display:none">欢迎你，<a>${user.user_name}</a></lable>
                <ul class="nav navbar-nav navbar-right" id = "no_login" style="display:block">              	
                	<c:if test="${empty user }">
                		<li><a  href=/Doers/Login.jsp >登录</a></li>
                    	<li><a href="/Doers/resign.jsp">注册</a></li>
                	</c:if>
                	<c:if test="${!empty user }">
                		<li><a href=java:void(0)>欢迎您 ，${user.user_name }</a></li>
                		<li><a href="#" >退出</a></li>
                	</c:if>
                </ul>
            </div>
        </nav>	
  </header>

</body>
</html>