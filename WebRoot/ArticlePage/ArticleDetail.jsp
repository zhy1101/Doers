<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${article.articleTitle}</title>
    <link rel="stylesheet" type="text/css" href="../Doers/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../Doers/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../Doers/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../Doers/css/style.css" />

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
            <li><a href="hiview.html">Do 交易</a></li>
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
                    <li><a href="#">首页</a></li>
                    <li><a href="#">Do 博物</a></li>
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
                    <p></p>
                    <span>${article.content}</span>
                    <hr />
                    <span class="pull-left">点赞：</span>
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
<script src="../Doers/js/jquery.scrollto.min.js"></script>
<script src="../Doers/js/jquery.easing.min.js"></script>
<script src="../Doers/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript" src="../Doers/js/main.js"></script>
</body>
</html>