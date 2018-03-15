 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<c:if test="${state == 1 }">
	<title>购买历史</title>
	</c:if>
	<c:if test="${state == 0 }">
	<title>我的功勋簿</title>
	</c:if>
	<link rel="shortcut icon" href="../../Doers/favicon.ico" />
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
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
		             <li ><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
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
				<c:if test="${state == 1 }">
					<div class="menuParent">
						<div class="ListTitlePanel">
							<h3 class="ListTitle">Do 购买</h3>
						</div>
						<div class="menuList">
							<a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">我的购物车</a>
							<a href="${pageContext.request.contextPath}/orderAction_loadBuyingList">交易中的订单</a>
							<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">购买记录</a>
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
							<a href="${pageContext.request.contextPath}/accountAction_payInCash">劳务提现</a>
						</div>
					</div>
				</c:if>
				
				<c:if test="${state == 0 }">
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
							<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">我的功勋簿</a>
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
				</c:if>
			</div>
		
		<div class="finance-content-middle">
			<div class="finance-content-middle-title">
				<c:if test="${state == 1 }">
				<h4>购买历史</h4>
				</c:if>
				<c:if test="${state == 0 }">
				<h4>我的功勋簿</h4>
				</c:if>
			</div>
			<div class="finance-content-middle-form">
				<div class="finance-add-agent finance-add-agent-color">
					<table>
						<tbody>
							<tr>
								<th>订单编号</th>
								<c:if test="${state == 1 }">
								<th>服务商</th>
								</c:if>
								<c:if test="${state == 0 }">
								<th>客户</th>
								</c:if>
								<th>协商时间</th>
								<th>服务时间</th>
								<th>成交价格</th>
								<th>操作</th>
							</tr>
							<c:if test="${state == 1 }">
								<c:forEach items="${myBuyingHistory }" var="items">
									<tr>
										<td>${items.orderId }</td>
										<td>${items.serverUser.user_name }</td>
										<td>${items.talkTimeStart }&nbsp;至&nbsp;${items.talkTimeEnd }</td>
										<td>${items.orderContract.serverTimeStart }&nbsp;至&nbsp;${items.orderContract.serverTimeEnd }</td>
										<td>${items.orderContract.price } Do币</td>
										<td><a href="${pageContext.request.contextPath}/contractAction_checkContract?cId=${orderItem.orderContract.id}">查看合约</a></td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${state == 0 }">
								<c:forEach items="${myBuyingHistory }" var="items">
									<tr>
										<td>${items.orderId }</td>
										<td>${items.serverUser.user_name }</td>
										<td>${items.talkTimeStart }&nbsp;至&nbsp;${items.talkTimeEnd }</td>
										<td>${items.orderContract.serverTimeStart }&nbsp;至&nbsp;${items.orderContract.serverTimeEnd }</td>
										<td>${items.orderContract.price } Do币</td>
										<td><a href="${pageContext.request.contextPath}/contractAction_checkContract?orderId=${items.orderId }">查看合约</a></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
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