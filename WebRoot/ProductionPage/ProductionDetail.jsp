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
<link href="../../Doers/ProductionPage/css/detail_dianzan.css"
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
.hotlist{width:936px;height:80px;margin:15px auto 0}
.hotlist li{float:left;width:70px;height:80px;overflow:hidden;text-align:center;line-height:2.5;font-family:sinsum;font-size:12px;margin:0 4px;display:inline}
.hotlist li img{display:block;width:58px;height:58px;margin:0 auto;border-radius:5px}
.hotlist li a{color:#333;}
.hotlist li a:hover{color:#6082b6}
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
									<span class="head-index"> <span><s:property value="#session.production.big_kind.dict_item_name"/></span><i>/</i><span><s:property value="#session.production.small_kind.dict_item_name"/></span></span>
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
					<div class="praise">
					<span id="praise"><img src="../../Doers/img/zan.png" id="praise-img" /></span>
					<span id="praise-txt">${production.zan }</span>
					<span id="add-num"><em>+1</em></span>
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
							<a href="${pageContext.request.contextPath}/userAction_openDoerSpace?userId=<s:property value="#session.production.user.uid"/>">
								<img src="<s:property value="#session.production.user.personImg_path"/>" width="80" height="80">
							</a>
						</div>
						<br>
						<div class="presonal-info">
							<a href="" class="author-name"><s:property value="#session.production.user.user_name"/></a>
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
					<div class="show-list-title-box border-bottom js-tab-module">
						<div>
							<ul class="hotlist cf">
								<c:forEach items="${proServersList }" var="ser">
								<li><a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.server.serverId}"><img src="${ser.server.serverCover }" />${ser.server.serverName }</a></li>
								</c:forEach>
							</ul>
						</div>
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
<script src="../../Doers/js/jquery-1.10.2.min.js"></script> 
<script type="text/javascript">
	$(document).ready(
	function(){
	$.ajax({ 		type:"POST",
					async: false,
					url: "/Doers/zanAction_checkZan",
					dataType:"json",
					success:function(data){
						if(data.isZan){
						$("#praise-img").attr("src","../../Doers/img/yizan.png");
						}else{
						$("#praise-img").attr("src","../../Doers/img/zan.png");
						}
					}
		});
		});
	/* 动态点赞
	 * 此效果包含css3，部分浏览器不兼容（如：IE10以下的版本）
	*/
	$(function(){
		
		$("#praise").click(function(){
			var praise_img = $("#praise-img");
			var text_box = $("#add-num");
			var praise_txt = $("#praise-txt");
			var num=parseInt(praise_txt.text());
			if(praise_img.attr("src") == ("../../Doers/img/yizan.png")){
				$(this).html("<img src='../../Doers/img/zan.png' id='praise-img' class='animation' />");
				praise_txt.removeClass("hover");
				text_box.show().html("<em class='add-animation'>-1</em>");
				$(".add-animation").removeClass("hover");
				num -=1;
				praise_txt.text(num)
				$.ajax({
					type:"GET",
					url: "/Doers/zanAction_removeZan",
				});
			}else{
				$(this).html("<img src='../../Doers/img/yizan.png' id='praise-img' class='animation' />");
				praise_txt.addClass("hover");
				text_box.show().html("<em class='add-animation'>+1</em>");
				$(".add-animation").addClass("hover");
				num +=1;
				praise_txt.text(num)
				$.ajax({
					type:"GET",
					url: "/Doers/zanAction_addZan",
				});
			}
		});
	})
</script>
</body>
</html>