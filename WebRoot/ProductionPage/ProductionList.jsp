<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博物列表</title>
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/animate.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/icomoon.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/magnific-popup.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/salvattore.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/style.css">
	<script src="../../Doers/ProductionPage/js/modernizr-2.6.2.min.js"></script>	
</head>
<body>
	<div id="fh5co-main">
		<div class="container">
			<div class="row">
        		<div id="fh5co-board" data-columns>
        		<s:iterator value="#productionList" var="production">
        			<div class="item">
		        	<div class="animate-box">
			        		<a href="<s:property value="#production.coverURL" />" class="image-popup fh5co-board-img" title="<s:property value="#production.productionTitle" />"><img src="<s:property value="#production.coverURL" />" ></a>
		        		</div>
		        		<div class="fh5co-desc"><a href="${pageContext.request.contextPath}/productionDetailAction?productionId=<s:property value="#production.productionId" />"><s:property value="#production.productionTitle" /></a></div>
		        	</div>
        		</s:iterator>
       			</div>
        	</div>
       	</div>
	</div>
	
	<script src="../../Doers/ProductionPage/js/jquery.min.js"></script>
	<script src="../../Doers/js/jquery.easing.min.js"></script>
	<script src="../../Doers/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../Doers/ProductionPage/js/jquery.waypoints.min.js"></script>
	<script src="../../Doers/ProductionPage/js/jquery.magnific-popup.min.js"></script>
	<script src="../../Doers/ProductionPage/js/salvattore.min.js"></script>
	<script src="../../Doers/ProductionPage/js/main.js"></script>

</body>
</html>