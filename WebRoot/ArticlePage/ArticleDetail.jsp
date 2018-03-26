<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${article.articleTitle}</title>
    <link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="../DoersInLocal/bootstrap/css/candy-box.css"/>
    <link rel="stylesheet" type="text/css" href="../DoersInLocal/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="../DoersInLocal/css/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="../DoersInLocal/css/style.css"/>
    <link href="../DoersInLocal/ProductionPage/css/detail_dianzan.css"
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
            <li><a href="/DoersInLocal/Activity/ActivityCenter.jsp">Do 活动</a></li>
            <li><a href="${pageContext.request.contextPath}/index.html">Do 交易</a></li>
            <li><a href="/DoersInLocal/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
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
                    <li><a href="${pageContext.request.contextPath}/productionListAction_getHotArticle">精选文章</a></li>
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
                        <span><a href="${pageContext.request.contextPath}/userAction_openDoerSpace?userId=${article.user.uid }" target="_blank"><img src="${article.user.personImg_path }" style="float:left;height: 25px;width: 25px;border-radius: 50%;margin-right: 5px">${article.user.user_name}</a> <i class="fa fa-clock-o"></i>${article.time}</span>
                    </div>
					<section class="article"><div>${article.content}</div></section>
                    <hr/>
                    <div class="recommend-box">
						<div class="praise">
						<span id="praise"><img src="../../DoersInLocal/img/zan.png" id="praise-img" /></span>
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
                    <h1>最新文章</h1>
                    <div class="aside-top">
                    	<c:forEach items="${newArticles }" var="var1">
                        <a href="${pageContext.request.contextPath}/productionDetailAction_showArticleDetail?articleId=${var1.articleId}"><img src="${var1.coverURL }" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">${var1.articleTitle }</a>
                        </c:forEach>
                    </div>
                </div>
                <div class="view-content-right" style="margin: 20px 0;">
                    <img src="img/img5.jpg" class="img-responsive" />
                </div>

                <div class="view-content-right">
                    <h1>作者文章列表</h1>
                    <div class="aside-top">
                      <c:if test="${!empty myAriticArticles }">
                        <c:forEach items="${myAriticArticles }" var="var2">
                        <a href="${pageContext.request.contextPath}/productionDetailAction_showArticleDetail?articleId=${var2.articleId}"><img src="${var2.coverURL }" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">${var2.articleTitle }</a>
                        </c:forEach>
                       </c:if>
                       <c:if test="${empty myAriticArticles }">
                        暂无更多文章
                       </c:if>
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
<script type="text/javascript" src="../DoersInLocal/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../DoersInLocal/bootstrap/js/bootstrap.min.js"></script>
<script src="../DoersInLocal/js/jquery.scrollto.min.js" type="text/javascript"></script>
<script src="../DoersInLocal/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="../DoersInLocal/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
	$.ajax({ 		
					type:"POST",
					async: false,
					url: "/DoersInLocal/pushAction_checkPush",
					dataType:"json",
					success:function(data){	
						if(data.isPush){
						$("#praise-img").attr("src","../../DoersInLocal/img/yizan.png");
						}else{
						$("#praise-img").attr("src","../../DoersInLocal/img/yizan.png");
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
			if(praise_img.attr("src") == ("../../DoersInLocal/img/yizan.png")){
				$(this).html("<img src='../../DoersInLocal/img/zan.png' id='praise-img' class='animation' />");
				praise_txt.removeClass("hover");
				text_box.show().html("<em class='add-animation'>-1</em>");
				$(".add-animation").removeClass("hover");
				num -=1;
				praise_txt.text(num)
				$.ajax({
					type:"GET",
					url: "/DoersInLocal/pushAction_removePush",
				});
			}else{
				$(this).html("<img src='../../DoersInLocal/img/yizan.png' id='praise-img' class='animation' />");
				praise_txt.addClass("hover");
				text_box.show().html("<em class='add-animation'>+1</em>");
				$(".add-animation").addClass("hover");
				num +=1;
				praise_txt.text(num)
				$.ajax({
					type:"GET",
					url: "/DoersInLocal/pushAction_addPush",
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