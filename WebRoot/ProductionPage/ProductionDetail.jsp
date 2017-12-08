<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>${production.productionTitle}</title>
    <link rel="stylesheet" type="text/css" href="../bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="../css/demo.css">
	
	<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
	<script src="../js/jquery.scrollto.min.js"></script>
	<script src="../js/jquery.easing.min.js"></script>
	<script src="../js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
	<script type="text/javascript" src="../js/main.js"></script>
	<script type="text/javascript">
	$(function(){
    	$('#skippr').skippr({
    	navType: 'block',
        autoPlay: true
        
    	});
	});
		//窗口效果
		//点击登录class为tc 显示
		$(".tc").click(function(){
			$("#gray").show();
			$("#popup").show();//查找ID为popup的DIV show()显示#gray
			tc_center();
		});
		//点击关闭按钮
		$("a.guanbi").click(function(){
			$("#gray").hide();
			$("#popup").hide();//查找ID为popup的DIV hide()隐藏
		})

		//窗口水平居中
		$(window).resize(function(){
			tc_center();
		});

		function tc_center(){
			var _top=($(window).height()-$(".popup").height())/2;
			var _left=($(window).width()-$(".popup").width())/2;
			
			$(".popup").css({top:_top,left:_left});
		}	
		</script>
		<script type="text/javascript">
		$(document).ready(function(){ 

			$(".top_nav").mousedown(function(e){ 
				$(this).css("cursor","move");//改变鼠标指针的形状 
				var offset = $(this).offset();//DIV在页面的位置 
				var x = e.pageX - offset.left;//获得鼠标指针离DIV元素左边界的距离 
				var y = e.pageY - offset.top;//获得鼠标指针离DIV元素上边界的距离 
				$(document).bind("mousemove",function(ev){ //绑定鼠标的移动事件，因为光标在DIV元素外面也要有效果，所以要用doucment的事件，而不用DIV元素的事件 
				
					$(".popup").stop();//加上这个之后 
					
					var _x = ev.pageX - x;//获得X轴方向移动的值 
					var _y = ev.pageY - y;//获得Y轴方向移动的值 
				
					$(".popup").animate({left:_x+"px",top:_y+"px"},10); 
				}); 

			}); 

			$(document).mouseup(function() { 
				$(".popup").css("cursor","default"); 
				$(this).unbind("mousemove"); 
			});
		}) 
		</script>
</head>
<body>
<header>
		<nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
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
               <lable id = "ready_login" style="display:none">欢迎你，<a>${user.user_name}</a></lable>
                <ul class="nav navbar-nav navbar-right" id = "no_login" style="display:block">              	
                	<c:if test="${empty user }">
                		<li><a  href=/Doers/Login.jsp >登录</a></li>
                    	<li><a href="/Doers/resign.jsp">注册</a></li>
                	</c:if>
                	<c:if test="${!empty user }">
                		<li><a href=java:void(0)>欢迎您 ，${user.user_name }</a></li>
                		<li><a href="#" >退出</a></li>
                	</c:if>
                </ul>
            </div>
        </nav>	
  </header>

<div style="positon:relative;width:1350px;background:#CCCCff;">
	<!-- 头部标题信息部分 -->
	<div class="Production-TitleInformation" style="positon:relative;background:#CCCCCC;width:70%;margin-left:200px">
		<div style="padding-top:60px;padding-left:100px;padding-top:70px"><h1>${production.productionTitle}</h1></div>
		<div>
			<div><i class="iconfont icon-liulan"></i> 浏览：<span class="watch-count">4632</span></div>
			<div><i class="iconfont icon-shoucang1"></i> 赞：<span class="collect-count">526</span></div>
		</div>
	</div>
</div>
</body>
</html>