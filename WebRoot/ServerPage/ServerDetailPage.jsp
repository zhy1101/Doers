<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${server.serverName} - 服务页详情 -</title>

<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="../Doers/css/style.css" type="text/css" />
<link rel="stylesheet"
	href="../../Doers/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../../Doers/ProductionPage/css/detail_main.css">
<link rel="stylesheet"
	href="../../Doers/ProductionPage/css/detail_thirdDropDownStyle.css">
<link rel="stylesheet"
	href="../../Doers/ProductionPage/css/detail_commentWidget.css">
<link rel="stylesheet"
	href="../../Doers/ProductionPage/css/detail_work.css">
<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
</style>
<script src="../Doers/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../Doers/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <a class="navbar-brand" href="hiview.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li><a href="hiview.html">Do 服务</a></li>
                    <li><a href="/Doers/Activity/ActivityCenter.jsp">Do 活动</a></li>
                    <li><a href="hiview.html">Do 交易</a></li>
                    <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="搜索">
                </form>

</nav>
<div class="container" style="margin-top:80px">
		<div class="row">
			<div style="border: 1px solid #e4e4e4; width: 930px; margin-bottom: 10px; margin: 0 auto; padding: 10px; margin-bottom: 10px;">
				<a href="./index.htm">首页&nbsp;&nbsp;&gt;</a> <a href="./蔬菜分类.htm">Do 服务&nbsp;&nbsp;&gt;</a>
				<a>${server.serverName}</a>
			</div>

			<div style="margin: 0 auto; width: 950px;">
				<div class="col-md-6">
					<img style="opacity: 1; width: 400px; height: 350px;" title=""
						class="medium"
						src="${server.serverCover}">
				</div>

				<div class="col-md-6">
					<div>
						<strong>${server.serverName}</strong>
					</div>

					<div style="margin: 10px 0 10px 0;">
						预估价: <strong style="color: #ef0101;"  >￥：${server.lowLine}&nbsp;~&nbsp;${server.lowLine*2}&nbsp;Do币</strong> 
					</div>
						<div style="margin: 20px 0 10px 0;border: 1px solid #e7dbb1;background-color: #fffee6; text-align: center;" onclick="addCart()">
							<a href="${pageContext.request.contextPath}/accountAction_addInMyCart?serverId=${server.serverId}">
							 <input style="background: url('./images/product.gif') no-repeat scroll 0 -600px rgba(0, 0, 0, 0); height: 36px; width: 127px;"
								value="加入购物车" type="button" onclick="addCart()">
							</a>
						</div>
						<div style="background-color: #F8F8FF;padding: 10px 10px; margin: 10px 0 10px 0;">
							<strong>服务介绍</strong>
							<div style="margin-top: 10px; width: 400px;">
								<p>${server.serverDescribtion }</p>
							</div>
						</div>
			</div>
			<div class="clear"></div>
			<div style="width: 950px; margin: 0 auto;">


				<div style="background-color: #d3d3d3; width: 900px;">
					<table class="table table-bordered">
						<tbody>
							<tr class="active">
								<th><strong>商品评论</strong></th>
							</tr>
							<tr class="warning">
								<th>暂无商品评论信息 <a>[发表商品评论]</a></th>
							</tr>
						</tbody>
					</table>
				</div>

			</div>

		</div>
	</div>

</body>
</html>