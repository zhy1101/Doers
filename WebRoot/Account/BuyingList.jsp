 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>订单列表 - 正在进行中</title>
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/home.css">
    <link rel="stylesheet" type="text/css" href="../../Doers/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/style.css" />

</head>
<body>


<header>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <a class="navbar-brand" href="hiview.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li><a href="hiview.html">Do 服务</a></li>
                    <li><a href="/Doers/Activity/ActivityCenter.jsp">Do 活动</a></li>
                    <li  class="active"><a href="hiview.html">Do 交易</a></li>
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
					<a>我的购物车</a>
					<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">交易中的订单</a>
					<a href="#">购买记录</a>
				</div>
			</div>
			<div class="menuParent">
				<div class="ListTitlePanel">
					<h3 class="ListTitle">Do 服务</h3>
				</div>
				<div class="menuList">
					<a href="#">服务中 列表</a>
					<a href="#">我的功勋簿</a>
				</div>
			</div>
			<div class="menuParent">
				<div class="ListTitlePanel">
					<h3 class="ListTitle">账户基本管理</h3>
				</div>
				<div class="menuList">
					<a href="#">我的账户</a>
					<a href="#">充值Do币</a>
					<a href="#">劳务提现</a>
				</div>
			</div>
		</div>
		
		<div class="finance-content-middle">
			<div class="finance-content-middle-title">
				<h4>正在进行订单列表</h4>
			</div>
			<div class="finance-content-middle-form">
				<div class="finance-add-agent finance-add-agent-color">
					<table>
						<tbody>
							<tr>
								<th>订单编号</th>
								<th>服务商</th>
								<th>协商时间</th>
								<th>服务时间</th>
								<th>服务议后价</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
						<c:forEach items="${myBuyingList }" var="orderItem">
							<tr>
								<td>${orderItem.orderId }</td>
								<td><a href="${pageContext.request.contextPath}/userAction_openDoerSpace?userId=${orderItem.serverUser.uid}">${orderItem.serverUser.user_name}</a></td>
								<td>${orderItem.talkTimeStart}&nbsp;至&nbsp;${orderItem.talkTimeEnd} </td>
								<c:if test="${orderItem.orderState != 50}">
								<td>${orderItem.orderContract.serverTimeStart}&nbsp;至&nbsp;${orderItem.orderContract.serverTimeEnd} </td>
								<td>${orderItem.orderContract.price} Do币</td>
								</c:if>
								<c:if test="${orderItem.orderState=50}">
								<td>暂无信息</td>
								<td>暂无信息</td>
								</c:if>
							<c:if test="${orderItem.orderState=50}">
								<td>协约期中，未上传合约</td>
								<td>处于协商期，服务商还未上传合约，请与协商期内尽快与服务商达成合约</td>
							</c:if>
							<c:if test="${orderItem.orderState=51}">
								<td>协约期中，已上传上传合约，未付款</td>
								<td><a href="#">查看协约</a> | <a href="#">确认付款</a></td>
							</c:if>
							<c:if test="${orderItem.orderState=52}">
								<td>已付款,服务期开始</td>
								<td><a href="#">查看协约</a></td>
							</c:if>
							<c:if test="${orderItem.orderState=53}">
								<td>服务器结束，验收确认</td>
							</c:if>
								<td><a href="#">确认完成</a> | <a href="#">申请延期</a></td>
							</tr>
							<tr><td> 服务商联系方式：<br>电话:${orderItem.serverUser.phone}<br>Email:${orderItem.serverUser.email}
												<br>QQ:${orderItem.serverUser.QQ}<br>微信:${orderItem.serverUser.weiChat}
												<br>地址:${orderItem.serverUser.address}</td></tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
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