<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${article.articleTitle}</title>
    <link rel="stylesheet" type="text/css" href="../Doers/bootstrap/css/candy-box.css"/>
    <link rel="stylesheet" type="text/css" href="../Doers/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="../Doers/css/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="../Doers/css/style.css"/>
    <link href="../Doers/ProductionPage/css/detail_dianzan.css"
	rel="stylesheet" type="text/css">
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
            <li><a href="${pageContext.request.contextPath}/index.html">Do 服务</a></li>
            <li><a href="/Doers/Activity/ActivityCenter.jsp">Do 活动</a></li>
            <li><a href="${pageContext.request.contextPath}/index.html">Do 交易</a></li>
            <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
		</ul>		
	</div>
	</nav> 
	</header>
<section class="view-header">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <ul class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
                    <li><a href="#">交流文章</a></li>
                    <li class="active">${article.articleTitle}</li>
                </ul>
            </div>
        </div>
    </div>
</section>
<section class="view-content-info">
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <div class="view-content-left">
                    <div class="content-header">
                        <h2>${article.articleTitle}</h2>
                        <span><a href="hiview-info.html"><img src="${article.user.personImg_path }" style="float:left;height: 25px;width: 25px;border-radius: 50%;margin-right: 5px">${article.user.user_name}</a> <i class="fa fa-clock-o"></i>${article.time}</span>
                    </div>
					<section class="article"><div>${article.content}</div></section>
                    <hr/>
                    <div class="recommend-box">
						<div class="praise">
						<span id="praise"><img src="../../Doers/img/zan.png" id="praise-img" /></span>
						<span id="praise-txt">${article.push}</span>
						<span id="add-num"><em>+1</em></span>
						</div>
					</div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="view-content-right">
                    <img src="${article.coverURL }" class="img-responsive" />
                </div>
                <div class="view-content-right">
                    <h1>热门文章</h1>
                    <div class="aside-top">
                        <a href="index.html"><img src="img/img1.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                        <a href="index.html"><img src="img/img2.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">看看硅谷的科技企业是如何开除员工的</a>
                        <a href="index.html"><img src="img/img3.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">大圣归来 三里屯优衣库试衣间是怎么刷爆朋友圈的</a>
                        <a href="index.html"><img src="img/img4.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">不要被VR的火热骗了 至少现在它还真没什么卵用</a>
                    </div>
                </div>
                <div class="view-content-right" style="margin: 20px 0;">
                    <img src="img/img5.jpg" class="img-responsive" />
                </div>

                <div class="view-content-right">
                    <h1>同作者其他文章</h1>
                    <div class="aside-top">
                        <a href="index.html"><img src="img/img1.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                        <a href="index.html"><img src="img/img2.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                        <a href="index.html"><img src="img/img3.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                        <a href="index.html"><img src="img/img4.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                    </div>
                </div>
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
<script type="text/javascript" src="../Doers/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../Doers/bootstrap/js/bootstrap.min.js"></script>
<script src="../Doers/js/jquery.scrollto.min.js" type="text/javascript"></script>
<script src="../Doers/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="../Doers/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
	$.ajax({ 		
					type:"POST",
					async: false,
					url: "/Doers/pushAction_checkPush",
					dataType:"json",
					success:function(data){	
						if(data.isPush){
						$("#praise-img").attr("src","../../Doers/img/yizan.png");
						}else{
						$("#praise-img").attr("src","../../Doers/img/yizan.png");
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
					url: "/Doers/pushAction_removePush",
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
					url: "/Doers/pushAction_addPush",
				});
			}
		});
	});
	$(window).load(function() {  //容器内所有图片超过宽度等比例缩小，不能用$(document).ready( 
    $(".article img").each( function() {
			var maxwidth = 800;
			var _height=parseInt($(this).height()/$(this).width()*800);
			//alert(_height);
		  if ($(this).width() > maxwidth) {
				$(this).css("width",800+"px");
				$(this).css("height",_height+"px");
		  }	
	});  
});
</script>
</body>
</html>