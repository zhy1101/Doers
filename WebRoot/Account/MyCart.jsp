 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>我的购物车</title>
	<link rel="shortcut icon" href="../../Doers/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/home.css">
    <link rel="stylesheet" type="text/css" href="../../Doers/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/style.css" />
		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
			}
			
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
			
			font {
				color: #3164af;
				font-size: 18px;
				font-weight: normal;
				padding: 0 10px;
			}
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
		             <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
		             <li><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers?checkAll=yes">Do 服务</a></li>
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
					<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">我的购物车</a>
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
					<a href="${pageContext.request.contextPath}/orderAction_loadServeringingHistory">我的功勋簿</a>
				</div>
			</div>
			<div class="menuParent">
				<div class="ListTitlePanel">
					<h3 class="ListTitle">账户基本管理</h3>
				</div>
				<div class="menuList">
					<a href="${pageContext.request.contextPath}/accountAction_loadingMyAccount">我的账户</a>
					<a href="${pageContext.request.contextPath}/Account/AddDoMoney.jsp">充值Do币</a>
					<a href="${pageContext.request.contextPath}/accountAction_payInCash">劳务提现</a>
				</div>
			</div>
		</div>
		
		<div class="finance-content-middle">
			<div class="finance-content-middle-title">
				<h4>我的购物车</h4>
			</div>
			<div class="finance-content-middle-form">
				<div class="finance-add-agent finance-add-agent-color finance-add-agent-clear-a find">
					<table>
						<tbody>
							<tr>
								<th>序号</th>
								<th>服务标题</th>
								<th>图片</th>
								<th>协约时长</th>
								<th>服务商</th>
								<th>预估价格</th>
								<th>操作</th>
							</tr>
					<c:forEach items="${myCart }" var="item"  varStatus="num">
							<tr>
								<td>${num.count }</td>
								<td>${item.cart_item.serverName }</td>
								<td><img src="${item.cart_item.serverCover }" width=100px height=80px ></td>
								<td>${item.cart_item.talkTime } 天</td>
								<td><a href="${pageContext.request.contextPath}/userAction_openDoerSpace?userId=${item.cart_item.user.uid }">${item.cart_item.user.user_name }</a></td>
								<td>${item.cart_item.lowLine }~${item.cart_item.lowLine*2}Do 币</td>
								<td><a href="${pageContext.request.contextPath}/orderAction_startTalk?serId=${item.cart_item.serverId }">开始预约</a> 丨 <a href="${pageContext.request.contextPath}/accountAction_deleteInCartByServerId?serverId=${item.cart_item.serverId }">删除</a></td>
							</tr>
					</c:forEach>
						</tbody>
					</table>
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
                        <li><a href="../../Doers/introduce.html" target="_blank">关于Doers</a></li>
                        <li><a href="../../Doers/introduce.html" target="_blank">联系我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footerbot">
       made by YU
    </div>
</footer>
<script src="../../Doers/Account/js/jquery-3.2.1.min.js"></script>
<script src="../../Doers/Account/js/address.js"></script>
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