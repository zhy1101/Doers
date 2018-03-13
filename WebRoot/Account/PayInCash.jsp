<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>劳务提现</title>
	<link rel="shortcut icon" href="../../Doers/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/home.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/Ext1.css">
    <link rel="stylesheet" type="text/css" href="../../Doers/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/style.css" />
    <style>
    a:hover{color:red}
    
    </style>
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
		             <li ><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
		             <li><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers">Do 服务</a></li>
		             <li><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter">Do 活动</a></li>
		             <li  class="active"><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
		             <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
            </div>
        </nav>
</header>
<br><br><br>
<section id="finance-content">
	<div class="finance-content clearfix">
		<div class="finance-content-nav menu">
			<div class="menuParent">
				<div class="ListTitlePanel">
					<h3 class="ListTitle">Do 购买</h3>
				</div>
				<div class="menuList">
					<a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">我的购物车</a>
					<a href="${pageContext.request.contextPath}/orderAction_loadBuyingList">交易中的订单</a>
					<a href="${pageContext.request.contextPath}/orderAction_loadBuyingHistory">购买记录</a>
				</div>
			</div>
			<div class="menuParent">
				<div class="ListTitlePanel">
					<h3 class="ListTitle">Do 服务</h3>
				</div>
				<div class="menuList">
					<a href="${pageContext.request.contextPath}/orderAction_loadServeringList">服务中 列表</a>
					<a href="${pageContext.request.contextPath}/orderAction_loadServeringHistory">我的功勋簿</a>
				</div>
			</div>
			<div class="menuParent">
				<div class="ListTitlePanel">
					<h3 class="ListTitle">账户基本管理</h3>
				</div>
				<div class="menuList">
					<a href="${pageContext.request.contextPath}/accountAction_loadingMyAccount">我的账户</a>
					<a href="${pageContext.request.contextPath}/Account/AddDoMoney.jsp">充值Do币</a>
					<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">劳务提现</a>
				</div>
			</div>
		</div>

		<div class="finance-content-middle">
			<div class="finance-content-middle-title">
				<h4>申请劳务提现</h4>
			</div>
			 <div class="cash">
				<div class="tx-tip"><i class="iconfont icon-tixing"></i>会员发布原创作品，可获得金币，申请提现兑换金额。<span
						class="red">（10 Do币=6元）</span></div>
				<div class="red" style="padding:10px 20px 0 20px;">ps：满足100金币，才能申请提现。一个工作日内完成提现。</div>
				<div class="tx-title">
					<div class="left text">当前金币：<b class="blue amount">${myAccount.wallet1 + myAccount.wallet2 } </b>
						<span style="margin:0 50px;">可提现金额：<b class="yellow">${(myAccount.wallet1 + myAccount.wallet2)/10*6} 元</b></span>
					</div>
				</div>
			</div>
			<div class="finance-content-middle-form">
				<p>
					<label>支付宝姓名：</label>
					<input type="text" name="" value="" placeholder="支付宝姓名和账号保持一致，否则不能成功到账。">
					<em>*(必填)</em>
				</p>
				<p>
					<label>支付宝账号：</label>
					<input type="text" name="" value="" placeholder="只支持支付宝用户，认证后才能申请提现。">
					<em>*(必填)</em>
				</p>
				<a href="javascript:void(0);" class="finance-content-middle-form-btn" hover=red>申请提现</a>
			</div>
		</div>
	</div>
</section>
<script src="themes/js/jquery-3.2.1.min.js"></script>
<script src="themes/js/address.js"></script>
<script type="text/javascript">
    $(function(){
        $("#sjld").sjld("#shenfen","#chengshi","#quyu");
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        var menuParent = $('.menu > .ListTitlePanel > div');//menu div
        var menuList = $('.menuList');
        $('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) { //list
            $(this).click(function(){
                if($(menuList[i]).css('display') == 'none'){
                    $(menuList[i]).slideDown(300);
                }
                else{
                    $(menuList[i]).slideUp(300);
                }
            });
        });
    });
</script>
</body>
</html>