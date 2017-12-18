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
<style type="text/css">
.button, .button:visited {
	background: #33CCFF repeat-x;
	display: inline-block;
	padding: 5px 10px 6px;
	color: #fff;
	text-decoration: none;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.6);
	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.6);
	text-shadow: 0 -1px 1px rgba(0,0,0,0.25);
	border-bottom: 1px solid rgba(0,0,0,0.25);
	position: relative;
	cursor: pointer
}
</style>
<body>
	<header> 
	<nav class="navbar navbar-default navbar-fixed-top">
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
	</div>
	</nav> 
	</header>
	<br>
	<div id="body">
		<div class="content-wrap">
			<!--作品头部区域-->
			<div class="work-details-wrap border-bottom">
				<div class="work-details-box-wrap">
					<div class="left-details-head">
						<div class="details-contitle-box">
							<h2><s:property value="#session.production.productionTitle"/></h2>
							<p>发布时间：<s:property value="#session.production.time"/></p>
							<div class="work-head-box">
								<div class="head-left">
									<span class="head-index"> <span><s:property value="#session.production.big_kind.dict_item_name"/></span><i>/</i><span><s:property value="#production.small_kind.dict_item_name"/></span></span>
									<br>
									<span style="color:blue">作品简介：</span><span class="head-index"><s:property value="#session.production.shortcontent"/></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="work-content-wrap ">
					<div class="work-center-con" style="width:90%;padding: 20px; -webkit-box-shadow: 0 0px 5px #f5f5f5;-moz-box-shadow:  0 0px 5px #f5f5f5;box-shadow: 0 0px 5px #f5f5f5;transition:all 0.4s ease;">
					<section style="display:block">${production.content }</section></div>
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
					<div class="card-media designer-card" >
						<div class="avatar-container-80 center">
							<a href="#">
								<img src="<s:property value="#session.production.user.personImg_path"/>" width="80" height="80">
							</a>
						</div>
						<br>
						<div class="presonal-info">
							<a href="#" class="author-name"><s:property value="#session.production.user.user_name"/></a>
						</div>
						<div class="position-info">
							<span><s:property value="#session.production.user.skill"/></span>
						</div>
						<div class="btn-area">
							<button class="button"  onclick="window.open('${pageContext.request.contextPath}/ProductionPage/LeaveMessageWindow.jsp','','width=1000,height=650,toolbar=no, menubar=no, scrollbars=no, resizable=no')" >与Doers说悄悄话</button>
						</div>
					</div>
				</div>
			</div>
			<div class="details-bottom-right">
				<div class="show-list-box">
					<div class="show-list-title-box border-bottom js-tab-module">
						<span class="show-tab-title current">关联服务</span> 
						<a href="#" class="view-more zcool-link-color">TA的主页</a>
					</div>
				</div>
			</div>
		</div>
</div>
<footer class="hi-footer">
    <div class="footertop">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <h4>Doers家族</h4>
                    <ul>
                        <li><a href="index.html">关于Doers</a></li>
                        <li><a>联系我们</a></li>
                        <li><a>其他</a></li>
                        <li><a>其他</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footerbot">
       made by YU
    </div>
</footer>
</body>
</html>