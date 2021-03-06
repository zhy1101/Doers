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
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css">	
	<link rel="shortcut icon" href="favicon.ico" />
	
</head>
<body>
<header>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers?checkAll=yes">Do 服务</a></li>
                    <li><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter">Do 活动</a></li>
                    <li><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
                    <li><a href="/DoersInLocal/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
                <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/searchAction_searchInSite" method="get" name="form1">
                    <input type="text" name="word" class="form-control col-lg-8" placeholder="输入你想要的关键字" >
                    <input type="submit" class="form-control col-lg-8" style="margin-left:5px;" value="搜全站" form="form1" id="send"/>
                </form>
                <ul class="nav navbar-nav navbar-right" id = "no_login" style="display:block">
                	
                	<c:if test="${empty user }">
                		<li><a  href=/DoersInLocal/Login.jsp >登录</a></li>
                    	<li><a href="/DoersInLocal/resign.jsp" target="_blank">注册</a></li>
                	</c:if>
                	<c:if test="${!empty user }">
                		<li><a href="javascript:void(0);">欢迎您 ，${user.user_name }</a></li>
                		<li><a href="${pageContext.request.contextPath}/userAction_dropout" >退出</a></li>
                	</c:if>
               </ul>
            </div>
        </nav>
</header>
<br><br>
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
                    <span class="pull-right"><a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=4" target="_blank">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
        	<c:forEach items="${topCodeProductionList }" var="codePro" varStatus="vs">
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="${vs.index}*200">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${codePro.productionId}" target="_blank">
                    <div class="walkhi">
                        <img src="${codePro.coverURL}"    class="img1">
                        <h4>${codePro.productionTitle}</h4>
                        <p>${codePro.time}</p>
                    </div>
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<section class="uphi">
    <div class="container">
        <div class="uphi-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">Do 影音</h1>
                    <span class="pull-right"><a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=5" target="_blank">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8 gallery-item animated" data-animation="bounceIn" data-delay="0">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${topVideoProductionList[0].productionId}" target="_blank">
                    <div class="gallery-item">
                        <img src="${topVideoProductionList[0].coverURL}"  class="videoBigImg">
                        <div class="img-caption">
                            <h4>${topVideoProductionList[0].productionTitle}</h4>
                            <p>${topVideoProductionList[0].time}</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="400">
                <div class="col-sm-12" style="margin: 0px; padding: 0px;">
                    <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${topVideoProductionList[1].productionId}" target="_blank">
                        <div class="gallery-item">
                            <img src="${topVideoProductionList[1].coverURL}" class="videoImg"  >
                            <div class="img-caption">
                                <h4>${topVideoProductionList[1].productionTitle}</h4>
                                <p>${topVideoProductionList[1].time}</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-sm-12" style="margin: 0px; padding: 0px;">
                    <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${topVideoProductionList[2].productionId}" target="_blank">
                        <div class="gallery-item">
                            <img src="${topVideoProductionList[2].coverURL}" class="videoImg"  >
                            <div class="img-caption">
                                <h4>${topVideoProductionList[2].productionTitle}</h4>
                                <p>${topVideoProductionList[2].time}</p>
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
                    <h1 class="pull-left">Do 文字&模板&创意其他</h1>
                    <span class="pull-right"><a href="${pageContext.request.contextPath}/productionListAction_getProductionsByBigkind?bigkindId=7">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row" style="padding:0px 15px;">
            <div class="col-sm-8 clear-lr gallery-item animated" data-animation="bounceIn" data-delay="0">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${topOtherProductionList[0].productionId}" target="_blank">
                    <div class="gallery-item" style="height: 253px; overflow: hidden;">
                        <img src="${topOtherProductionList[0].coverURL}" class="wpBigImg1">
                        <div class="img-caption">
                            <h4>${topOtherProductionList[0].productionTitle}</h4>
                            <p>${topOtherProductionList[0].time}</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 clear-lr animated" data-animation="bounceIn" data-delay="400">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${topOtherProductionList[1].productionId}" target="_blank">
                    <div class="gallery-item">
                        <img src="${topOtherProductionList[1].coverURL}" class="wpBigImg2">
                        <div class="img-caption">
                            <h4>${topOtherProductionList[1].productionTitle}</h4>
                            <p>${topOtherProductionList[1].time}</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row" style="padding:0px 15px;">
        	<c:forEach items="${topWordAndPicProductionList }" var="wpPro" >
            <div class="col-sm-3 clear-lr animated" data-animation="bounceIn" data-delay="400" style="margin: 0px;">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${wpPro.productionId}" target="_blank">
                    <div class="gallery-item" >
                        <img src="${wpPro.coverURL}" class="wpImg img-response" >
                        <div class="img-caption">
                            <h4>${wpPro.productionTitle}</h4>
                            <p>${wpPro.time}</p>
                        </div>
                    </div>
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<section class="higuestsay">
    <div class="container">
        <div class="hgs-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">优秀 Doers</h1>
                </div>
            </div>
        </div>
        <div class="row">
        		<!-- 重复4次 -->
        	<c:forEach items="${topFourUserList}" var="uf">
            <div class="col-sm-3 animated" data-animation="bounceIn" data-delay="0" style="text-align: center;">
                <img src="${uf.personImg_path }" >
                <div class="hgs-content">
                    <a href="${pageContext.request.contextPath}/userAction_openDoerSpace?userId=${uf.uid}" target="_blank"><h4>${uf.user_name }</h4></a>
                    <p>${uf.description }</p>
                </div>
            </div>
            </c:forEach>
        </div>

    </div>
</section>
<section class="hiview">
    <div class="container">
        <div class="hiview-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">缤纷活动</h1>
                    <span class="pull-right"><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter" target="_blank">更多</a> </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="0">
                <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=1" target="_blank">
                    <div class="walkhi2">
                        <img src="../../DoersInLocal/img/activity1.jpg" class="img-responsive img1">
                        <h4>狗年晒汪</h4>
                        <p>2018-2-15</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="200">
                <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=2" target="_blank">
                    <div class="walkhi2">
                        <img src="../../DoersInLocal/img/banner2.jpg" class="img-responsive img1">
                        <h4>第二届谭木匠创意产品设计征集公选</h4>
                        <p>2017-11-10</p>
                    </div>
                </a>
            </div>
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="400">
                <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=3" target="_blank">
                    <div class="walkhi2">
                        <img src="../../DoersInLocal/img/banner6.jpg" class="img-responsive img1">
                        <h4>搜狗输入法手机皮肤创意大赛</h4>
                        <p>2017-12-18</p>
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
<script src="js/jquery-1.10.2.min.js"></script> 
<script src="js/jqthumb.js"></script>
<script type="text/javascript">
	$(function(){
    	$('#skippr').skippr({
    	navType: 'block',
        autoPlay: true});
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
<script language="javascript" type="text/javascript">
		$('.img1').jqthumb({
 		classname: 'jqthumb',  
        width          : 330,  
        height         : 200,  
        showoncomplete : true  });
        $('.videoBigImg').jqthumb({
 		classname: 'jqthumb',  
        width          : 750,  
        height         : 500,  
        showoncomplete : true  });
        $('.videoImg').jqthumb({
 		classname: 'jqthumb',  
        width          : 360,  
        height         : 230,  
        showoncomplete : true  });
        $('.wpBigImg1').jqthumb({
 		classname: 'jqthumb',  
        width          : 760,  
        height         : 260,  
        showoncomplete : true  });
        $('.wpBigImg2').jqthumb({
 		classname: 'jqthumb',  
        width          : 380,  
        height         : 255,  
        showoncomplete : true  });
        $('.wpImg').jqthumb({
 		classname: 'jqthumb',  
        width          : 285,  
        height         : 250,  
        showoncomplete : true  });
</script>
<script language="javascript" type="text/javascript">
		$("#send").click(function(){
						var bt=document.getElementById("send");
						if(document.form1.word.value==""){
						alert("搜索关键词不能为空!");
						document.form1.word.focus();
						return false;} 
						document.form1.submit();
 });
</script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script src="js/jquery.skippr.js"></script>
<script src="js/jquery.scrollto.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript" src="js/main.js"></script>

</body>
</html>