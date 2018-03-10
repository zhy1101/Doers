<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>充值Do币</title>
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/home.css">
		<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/Ext1.css">
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
					<a>交易中的订单</a>
					<a>购买记录</a>
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
					<a >我的账户</a>
					<a href="javascript:void(0);" style="color:#3366cc;background:#D1EEEE">充值Do币</a>
					<a href="#">劳务提现</a>
				</div>
			</div>
		</div>
		
<div class="finance-content-middle">
	<div class="finance-content-middle-title">
		<h4>Do 币充值</h4>
	</div>
	<strong class="m-right">参商渐暖</strong>
            当前金币：2</span>
    </div><!--statichead end-->
<div class="finance-content-middle-form">
    <div class="staticon" style="width:800px;margin-left:100px" >
        <form id="w0" action="/payment/pay" method="post">
            <ul>
                <li class="clear"><span class="label" style="color:#ff6600;margin-left:10px">Do 币单价</span><span style="color:#ff6600;">1金币/元</span></li>
                <li class="clear"><span class="label" style="color:#000;margin-left:10px">充值金额</span>
                    <div class="recharge" style="margin-left:40px" >
                        <span>
                            <input type="radio" id="jf_0" name="pid" value="12" checked data-price="5.00">                            <label for="jf_0">5.00元<b>/</b>5金币</label>
                        </span>
                                                <span>
                            <input type="radio" id="jf_1" name="pid" value="13" data-price="10.00">                            <label for="jf_1">10.00元<b>/</b>10金币</label>
                        </span>
                                                <span>
                            <input type="radio" id="jf_2" name="pid" value="14" data-price="20.00">                            <label for="jf_2">20.00元<b>/</b>22金币</label>
                        </span>
                                                <span>
                            <input type="radio" id="jf_3" name="pid" value="15" data-price="30.00">                            <label for="jf_3">30.00元<b>/</b>33金币</label>
                        </span>
                                                <span>
                            <input type="radio" id="jf_4" name="pid" value="16" data-price="40.00">                            <label for="jf_4">40.00元<b>/</b>44金币</label>
                        </span>
                                                <span>
                            <input type="radio" id="jf_5" name="pid" value="17" data-price="50.00">                            <label for="jf_5">50.00元<b>/</b>55金币</label>
                        </span>
                                                <span>
                            <input type="radio" id="jf_6" name="pid" value="18" data-price="100.00">                            <label for="jf_6">100.00元<b>/</b>110金币</label>
                        </span>
                        
                    </div>
                </li>
                <li class="clear"><span class="label" style="color:#000;margin-left:10px">支付</span><span style="margin:7px 0 0 0;color:#ff6600;" id="payment">5.00元</span></li>
            </ul>


            <div class="btnbox">
                <input class="alipaybtn" value="支付宝付款" id="btnSubmit" type="submit">
            </div>

            </form>
    </div>
	</div>
	</div>
</section>
<script src="../../Doers/Account/js/jquery-3.2.1.min.js"></script>
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