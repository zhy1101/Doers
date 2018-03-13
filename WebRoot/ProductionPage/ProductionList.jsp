<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博物列表</title>
	<link rel="shortcut icon" href="../../Doers/favicon.ico" />
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/dropDown.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/animate.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/icomoon.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/magnific-popup.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/salvattore.css">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/style.css">
	<script src="../../Doers/ProductionPage/js/modernizr-2.6.2.min.js"></script>	

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
                    <li class="active"><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li ><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers">Do 服务</a></li>
                    <li><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter">Do 活动</a></li>
                    <li><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
                    <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
            </div>
        </nav>
</header>
	<br><br>
	<div id="page-wrap">   
	<ul class="dropdown">
		<li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">全部作品</a></li>
		<li>
			<a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=4">技术编码</a>
			<ul class="sub_menu">
				<c:forEach items="${CodeSmallKindList }" var="kind1">
				<li><a href="${pageContext.request.contextPath}/productionListAction_getProductionsBySmallkind?smallkindId=${kind1.dict_id}">${kind1.dict_item_name }</a></li>
				</c:forEach>
			</ul>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=5">动态影音</a>
			<ul class="sub_menu">
				<c:forEach items="${VideoSmallKindList }" var="kind2">
				<li><a href="${pageContext.request.contextPath}/productionListAction_getProductionsBySmallkind?smallkindId=${kind2.dict_id}">${kind2.dict_item_name }</a></li>
				</c:forEach>
			</ul>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=6">文字编写</a>
			<ul class="sub_menu">
				<c:forEach items="${WordSmallKindList }" var="kind3">
				<li><a href="${pageContext.request.contextPath}/productionListAction_getProductionsBySmallkind?smallkindId=${kind3.dict_id}">${kind3.dict_item_name }</a></li>
				</c:forEach>
			</ul>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=7">图像模板</a>
			<ul class="sub_menu">
				<c:forEach items="${PicSmallKindList }" var="kind4">
				<li><a href="${pageContext.request.contextPath}/productionListAction_getProductionsBySmallkind?smallkindId=${kind4.dict_id}">${kind4.dict_item_name }</a></li>
				</c:forEach>
			</ul>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=8">创意其他</a>
			<ul class="sub_menu">
				<c:forEach items="${OtherSmallKindList }" var="kind5">
				<li><a href="${pageContext.request.contextPath}/productionListAction_getProductionsBySmallkind?smallkindId=${kind5.dict_id}">${kind5.dict_item_name }</a></li>
				</c:forEach>
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/productionListAction_getHotArticle">精选文章</a></li>
	</ul>
</div>
	<div id="fh5co-main">
		<div class="container">
			<div class="row">
        		<div id="fh5co-board" data-columns>
        		<s:iterator value="#productionList" var="production">
        			<div class="item">
		        	<div class="animate-box">
			        		<a href="<s:property value="#production.coverURL" />" class="image-popup fh5co-board-img" title="<s:property value="#production.productionTitle" />"><img src="<s:property value="#production.coverURL" />" ></a>
		        		</div>
		        		<div class="fh5co-desc"><a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=<s:property value="#production.productionId" />"><s:property value="#production.productionTitle" /></a></div>
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
	<script type="text/javascript" src="../../Doers/ProductionPage/js/jquery.dropdown.js"></script>

</body>
</html>