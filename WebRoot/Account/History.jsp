 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>我的购物车</title>
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/home.css">
    <link rel="stylesheet" type="text/css" href="../../Doers/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/style.css" />
		
		<script type="text/javascript">
			function delProFromCart(pid){
				if(confirm("您是否要删除该项？")){
					location.href="${pageContext.request.contextPath }/product?method=delProFromCart&pid="+pid;
				}
			}
			
			function clearCart(){
				if(confirm("您是否要清空购物车？")){
					location.href="${pageContext.request.contextPath }/product?method=clearCart";
				}
			}
		
		</script>

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
					<a>交易中的订单</a>
					<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">购买记录</a>
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
								<th>服务商/客户</th>
								<th>协商时间</th>
								<th>服务时间</th>
								<th>成交价格</th>
								<th>操作</th>
							</tr>
							<tr>
								<td>18301226993</td>
								<td>郑爽</td>
								<td>2017-11-11 12:00</td>
								<td>按揭房贷款</td>
								<td>¥5000000.00</td>
								<td><a href="#">查看合约</a></td>
							</tr>
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