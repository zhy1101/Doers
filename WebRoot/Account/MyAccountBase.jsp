 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>我的账户基本情况</title>
	<link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../../DoersInLocal/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../DoersInLocal/Account/css/home.css">
    <link rel="stylesheet" type="text/css" href="../../DoersInLocal/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../../DoersInLocal/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../DoersInLocal/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../../DoersInLocal/css/style.css" />

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
		             <li  class="active"><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
		             <li><a href="/DoersInLocal/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
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
					<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">我的账户</a>
					<a href="${pageContext.request.contextPath}/Account/AddDoMoney.jsp">充值Do币</a>
					<a href="${pageContext.request.contextPath}/accountAction_payInCash">劳务提现</a>
				</div>
			</div>
		</div>
		
			<div class="finance-content-middle">
			<div class="finance-content-middle-title">
				<h4>我的账户</h4>
			</div>
			<div class="finance-content-middle-form">
				<div class="finance-hide">
					<ul class="finance-content-middle-form-list clearfix">
						<li>
							<span class="finance-step">基本信息</span>
							<p>
								<label>账户总余额：</label><label>${myAccount.wallet1 + myAccount.wallet2 } Do 币</label>
								<br><br>
								<label>充值钱包余额：</label><label style="color:#ff6600">${myAccount.wallet1} Do 币</label>
								<br><br>
								<label>劳务所得余额：</label><label style="color:#ff6600">${myAccount.wallet2} Do 币</label>
							</p>
						</li>
						<li>
							<span class="finance-step">账户变动记录</span>
							<p>
								<c:forEach items="${operateList }" var="op">
								<label>${op.time}</label>&nbsp;&nbsp;
									<c:if test="${op.behave.dict_id==58 }">
						 			<label>充值${op.doMoeny} Do币</label>
						 			</c:if>
						 			<c:if test="${op.behave.dict_id==59 }">
						 			<label>获得劳务报酬 ${op.doMoeny} Do币</label>
						 			</c:if>
						 			<c:if test="${op.behave.dict_id==60 }">
						 			<label>支付劳务报酬 ${op.doMoeny} Do币</label>
						 			</c:if>
						 			<c:if test="${op.behave.dict_id==61 }">
						 			<label>劳务提现 ${op.doMoeny} Do币</label>
						 			</c:if>
								<br>
								</c:forEach>
								<a href="${pageContext.request.contextPath}/accountAction_checkAllOperate?accountId=${myAccount.account_id}" target="_blank">查看全部</a>
							</p>
						</li>

					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<footer class="hi-footer" style="margin-top:20px">
    <div class="footertop">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <h4>Doers家族</h4>
                    <ul>
                        <li><a href="../../DoersInLocal/introduce.html" target="_blank">关于Doers</a></li>
                        <li><a href="../../DoersInLocal/introduce.html" target="_blank">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footerbot">
       made by YU
    </div>
</footer>
<script src="../../DoersInLocal/Account/js/jquery-3.2.1.min.js"></script>
<script>
    $(document).ready(function() {
        var $table = $("table");
        var td = $table.find("td")
        var tt =  $("td").val();
        console.log(tt);
        $('table td').each(function(){
            console.log($(this).text());

            if ($('table td').text() > 2) {
                alert('fev')
                $("<br><br/>").appendTo('table td').text();
                return false;
            }
            else {
                $('td').val("");
                return true;
            }
        })
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