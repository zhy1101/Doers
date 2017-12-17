<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${production.productionTitle}</title>
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
<link href="../../Doers/ProductionPage/css/detail_jiathis_share.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<header> <nav class="navbar navbar-default navbar-fixed-top">
	<div class="navbar-header">
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
		<lable id="ready_login" style="display:none">欢迎你，<a>${user.user_name}</a></lable>
		<ul class="nav navbar-nav navbar-right" id="no_login"
			style="display:block">
			<c:if test="${empty user }">
				<li><a href=/Doers/Login.jsp>登录</a></li>
				<li><a href="/Doers/resign.jsp">注册</a></li>
			</c:if>
			<c:if test="${!empty user }">
				<li><a href=java:void(0)>欢迎您 ，${user.user_name }</a></li>
				<li><a href="#">退出</a></li>
			</c:if>
		</ul>
	</div>
	</nav> </header>
	<br>
	<div id="body">
		<div class="content-wrap">
			<!--作品头部区域-->
			<div class="work-details-wrap border-bottom">
				<div class="work-details-box-wrap">
					<div class="left-details-head">
						<div class="details-contitle-box">
							<h2>闪屏插画合集</h2>
							<p title="审核通过时间：2017-12-04 13:31:13；创建时间：2017-12-04 13:25:48"
								class="title-time"></p>
							<div class="work-head-box">
								<div class="head-left">
									<span class="head-index"> <span>原创作品</span><i>/</i><span>插画</span>
									</span>
									<div class="copy-con">
										<span class="copy-icon"> <i class="copy-tips">作品版权由桥小树解释,禁止匿名转载；禁止商业使用；禁止个人使用。
												临摹作品，同人作品原型版权归原作者所有。</i>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="work-content-wrap ">
					<div class="work-center-con">测试测试测试测试</div>
				</div>
				<div class="recommend-box">
					<div id="detail-recommend-div" class="recommend-works normal"
						style="background-image: url(../img/zan.png)">
						<i class="recommend-number">774</i>
					</div>
				</div>
			</div>
		</div>

		<div class="work-details-box-wrap details-bottom">
			<!--作品底部栏-->
			<div class="details-work-info-wrap">
				<!--作品底部左侧信息-->
				<div class="author-card follow-box">
					<div class="card-media designer-card" data-id="13141798">
						<div class="avatar-container-80 center">
							<a href="#" title="桥小树" class="author-avatar" target="_blank">
								<img src="../img/img1.jpg" width="80" height="80">
							</a>
						</div>
						<br>
						<div class="presonal-info">
							<a href="#" title="桥小树" class="author-name">桥小树</a>
						</div>
						<div class="position-info">
							<span>深圳&nbsp;|&nbsp;设计爱好者</span>
						</div>
						<div class="btn-area">
							<button type="button">liuyan</button>
						</div>
					</div>
				</div>

				<div class="infomation-work">
					<div class="rightbar-titlebox">
						<h3 class="rightbar-title left">作品信息</h3>
						<i class="select-shixin-arrow rightnew-arrows"></i>
					</div>
					<div class="info-first js-a-team-info" data-zteamid="0"></div>
					<p class="info-list-title">创作时间</p>
					<div class="info-list-decra creat-time-box">
						<p>2017/12/01</p>
					</div>
				</div>
			</div>
			<div class="details-bottom-right">
				<div class="show-list-box">
					<div class="show-list-title-box border-bottom js-tab-module">
						<span class="show-tab-title current">关联服务</span> <a href="#"
							class="view-more zcool-link-color">TA的主页</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>