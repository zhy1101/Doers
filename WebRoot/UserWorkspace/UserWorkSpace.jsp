<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>个人工作中心</title>	
	<link rel="stylesheet" href="common/css/sccl.css">
	<link rel="stylesheet" type="text/css" href="common/css/skin.css" />
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
	<link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../css/demo.css">	
  </head>
  <body>
<header>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers?checkAll=yes">Do 服务</a></li>
                    <li><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter">Do 活动</a></li>
                    <li><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
                    <li class="active"><a href="/DoersInLocal/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
            </div>
        </nav>
</header>
    <div class="layout-admin">
		<aside class="layout-side">
		    <br>
			<ul class="side-menu">  
			</ul>
		</aside>
		<section class="layout-main">
			<div class="layout-main-body">
				<iframe class="body-iframe" name="iframe0" width="100%" height="99%" src="../WelcomePage.html" frameborder="0" data-id="home.html" seamless></iframe>
			</div>
		</section>
		<div class="layout-footer">@2017 v0.1</div>
	</div>
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="common/js/sccl.js"></script>
	<script type="text/javascript" src="common/js/sccl-util.js"></script>
	<script type="text/javascript" charset="utf-8" src="../utf8-jsp/ueditor.config.js"></script>
   	<script type="text/javascript" charset="utf-8" src="../utf8-jsp/ueditor.all.js"> </script>
   	
  </body>
</html>
