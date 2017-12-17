<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doers</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.skippr.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css">	
</head>
<body>
<header>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <a class="navbar-brand" href="hiview.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li><a href="hiview.html">Do 服务</a></li>
                    <li><a href="hiview.html">Do 活动</a></li>
                    <li><a href="hiview.html">Do 交易</a></li>
                    <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="搜索">
                </form>
               <lable id ="ready_login" style="display:none">欢迎你，<a>${user.user_name}</a></lable>
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
<section id="container">
        <div id="skippr">
            <div style="background-image: url(img/banner1.jpg);"></div>
            <div style="background-image: url(img/banner2.jpg);" ></div>     
            <div style="background-image: url(img/banner3.jpg);"></div>
            <div style="background-image: url(img/banner4.jpg);"></div>
            <div style="background-image: url(img/banner5.jpg);"></div>
        </div>
</section>
<section style="background-color: #f7f7f7;padding: 0px 0px 30px 0px;">
    <div class="container">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">Do 编码</h1>
                    <span class="pull-right"><a href="index.html">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="0">
                <a href="index.html">
                    <div class="walkhi">
                        <img src="img/img1.jpg" class="img-responsive">
                        <h4>走着嗨活动标题</h4>
                        <p>
                            2015-7-15
                        </p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="200">
                <a href="index.html">
                    <div class="walkhi">
                        <img src="img/img2.jpg" class="img-responsive">
                        <h4>走着嗨活动标题</h4>
                        <p>
                            2015-7-15
                        </p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="400">
                <a href="index.html">
                    <div class="walkhi">
                        <img src="img/img3.jpg" class="img-responsive">
                        <h4>走着嗨活动标题</h4>
                        <p>
                            2015-7-15
                        </p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<section class="uphi">
    <div class="container">
        <div class="uphi-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">Do 影音</h1>
                    <span class="pull-right"><a href="index.html">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8 gallery-item animated" data-animation="bounceIn" data-delay="0">
                <a href="index.html">
                    <div class="gallery-item">
                        <img src="img/img4.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="400">
                <div class="col-sm-12" style="margin: 0px; padding: 0px;">
                    <a href="index.html">
                        <div class="gallery-item">
                            <img src="img/img1.jpg" class="img-responsive">
                            <div class="img-caption">
                                <h4>走着嗨活动标题</h4>
                                <p>
                                    2015-7-15
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-sm-12" style="margin: 0px; padding: 0px;">
                    <a href="index.html">
                        <div class="gallery-item">
                            <img src="img/img3.jpg" class="img-responsive">
                            <div class="img-caption">
                                <h4>走着嗨活动标题</h4>
                                <p>
                                    2015-7-15
                                </p>
                            </div>
                        </div>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>
<section class="hithing">
    <div class="container">
        <div class="hithing-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">Do 文字&模板</h1>
                    <span class="pull-right"><a href="index.html">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row" style="padding:0px 15px;">
            <div class="col-sm-8 clear-lr gallery-item animated" data-animation="bounceIn" data-delay="0">
                <a href="index.html">
                    <div class="gallery-item" style="height: 253px; overflow: hidden;">
                        <img src="img/img4.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 clear-lr animated" data-animation="bounceIn" data-delay="400">
                <a href="index.html">
                    <div class="gallery-item">
                        <img src="img/img1.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row" style="padding:0px 15px;">
            <div class="col-sm-3 clear-lr animated" data-animation="bounceIn" data-delay="400" style="margin: 0px;">
                <a href="index.html">
                    <div class="gallery-item" >
                        <img src="img/img1.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 clear-lr  animated" data-animation="bounceIn" data-delay="400" style="margin: 0px;">
                <a href="index.html">
                    <div class="gallery-item">
                        <img src="img/img2.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 clear-lr animated" data-animation="bounceIn" data-delay="400" style="margin: 0px;">
                <a href="index.html">
                    <div class="gallery-item">
                        <img src="img/img3.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-3 clear-lr animated" data-animation="bounceIn" data-delay="400" style="margin: 0px;">
                <a href="index.html">
                    <div class="gallery-item">
                        <img src="img/img4.jpg" class="img-responsive">
                        <div class="img-caption">
                            <h4>走着嗨活动标题</h4>
                            <p>
                                2015-7-15
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<section class="higuestsay">
    <div class="container">
        <div class="hgs-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">优秀 Doers</h1>
                    <span class="pull-right"><a href="index.html">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3 animated" data-animation="bounceIn" data-delay="0" style="text-align: center;">
                <img src="img/img3.jpg" >
                <div class="hgs-content">
                    <h4>
                        这是标题或者嗨客名称
                    </h4>
                    <p>
                        这里是嗨客说的话，可以是很多，或者是嗨客的座右铭。可以很长很长很长很长

                    </p>
                    <p style="text-align: right;">---签名</p>

                </div>
            </div>
            <div class="col-sm-3 animated" data-animation="bounceIn" data-delay="200"  style="text-align: center;">
                <img src="img/img2.jpg" >
                <div class="hgs-content">
                    <h4>
                        这是标题或者嗨客名称
                    </h4>
                    <p>
                        这里是嗨客说的话，可以是很多，或者是嗨客的座右铭。可以很长很长很长很长

                    </p>
                    <p style="text-align: right;">---签名</p>

                </div>
            </div>
            <div class="col-sm-3 animated" data-animation="bounceIn" data-delay="400" style="text-align: center;">
                <img src="img/img1.jpg" >
                <div class="hgs-content">
                    <h4>
                        这是标题或者嗨客名称
                    </h4>
                    <p>
                        这里是嗨客说的话，可以是很多，或者是嗨客的座右铭。可以很长很长很长很长

                    </p>
                    <p style="text-align: right;">---签名</p>

                </div>
            </div>
            <div class="col-sm-3 animated" data-animation="bounceIn" data-delay="600" style="text-align: center;">
                <img src="img/img4.jpg" >
                <div class="hgs-content">
                    <h4>
                        这是标题或者嗨客名称
                    </h4>
                    <p>
                        这里是嗨客说的话，可以是很多，或者是嗨客的座右铭。可以很长很长很长很长

                    </p>
                    <p style="text-align: right;">---签名</p>

                </div>
            </div>
        </div>

    </div>
</section>
<section class="hiview">
    <div class="container">
        <div class="hiview-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">缤纷活动</h1>
                    <span class="pull-right"><a href="index.html">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="0">
                <a href="index.html">
                    <div class="walkhi2">
                        <img src="img/img1.jpg" class="img-responsive">
                        <h4>走着嗨活动标题</h4>
                        <p>
                            2015-7-15
                        </p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="200">
                <a href="index.html">
                    <div class="walkhi2">
                        <img src="img/img2.jpg" class="img-responsive">
                        <h4>走着嗨活动标题</h4>
                        <p>
                            2015-7-15
                        </p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="400">
                <a href="index.html">
                    <div class="walkhi2">
                        <img src="img/img3.jpg" class="img-responsive">
                        <h4>走着嗨活动标题</h4>
                        <p>
                            2015-7-15
                        </p>
                    </div>
                </a>
            </div>
        </div>
    </div>

</section>

<footer class="hi-footer">
    <div class="footertop">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <h4>
             Doers家族
                    </h4>
                    <ul>
                        <li><a href="index.html">关于Doers</a></li>
                        <li><a>联系我们</a></li>
                        <li><a>其他</a></li>
                        <li><a>其他</a></li>
                    </ul>
                </div>
                <div class="col-sm-4">
                    <h4>
                        合作伙伴
                    </h4>

                </div>
                <div class="col-sm-4">
                    <i class="fa fa-weibo"></i>
                    <i class="fa fa-qq"></i>
                    <i class="fa fa-weixin"></i>
                </div>
            </div>

        </div>
    </div>
    <div class="footerbot">
       made by 5Doers
    </div>
</footer>
<script src="js/jquery-1.10.2.min.js"></script> 
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
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script src="js/jquery.skippr.js"></script>
<script src="js/jquery.scrollto.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript" src="js/main.js"></script>

</body>
</html>