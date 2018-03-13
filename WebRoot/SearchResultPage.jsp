<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>搜索结果页</title>
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
                    <li><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers">Do 服务</a></li>
                    <li><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter">Do 活动</a></li>
                    <li><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
                    <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
                <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/searchAction_searchInSite" method="get">
                    <input type="text" name="word" class="form-control col-lg-8" placeholder="输入你想要的关键字">
                    <input type="submit" value="搜全站"/>
                </form>
            </div>
        </nav>
</header>

<section style="background-color: #f7f7f7;padding: 0px 0px 30px 0px;">
    <div class="container">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">相关作品</h1>
                </div>
            </div>
        </div>
        <div class="row">
        	<c:forEach items="${productionList }" var="ppro" varStatus="vs">
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="${vs.index}*200">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${ppro.productionId}">
                    <div class="walkhi">
                        <img src="${ppro.coverURL}"    class="img1">
                        <h4>${ppro.productionTitle}</h4>
                        <p>${ppro.time}</p>
                    </div>
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<section style="background-color: #f7f7f7;padding: 0px 0px 30px 0px;">
    <div class="container">
        <div class="page-header">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left">相关讨论文章</h1>
                </div>
            </div>
        </div>
        <div class="row">
        	<c:forEach items="${articleList }" var="arc" varStatus="vs">
            <div class="col-sm-4 animated" data-animation="bounceIn" data-delay="${vs.index}*200">
                <a href="${pageContext.request.contextPath}/productionDetailAction_showArticleDetail?articleId=${arc.articleId}">
                    <div class="walkhi">
                        <img src="${arc.coverURL}"    class="img1">
                        <h4>${arc.articleTitle}</h4>
                        <p>${arc.word1}&nbsp;${arc.word2}&nbsp;${arc.word3}</p>
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
                    <h1 class="pull-left">有关用户</h1>
                </div>
            </div>
        </div>
        <div class="row">
        		<!-- 重复4次 -->
        	<c:forEach items="${userList }" var="u">
            <div class="col-sm-3 animated" data-animation="bounceIn" data-delay="0" style="text-align: center;">
                <img src="${u.personImg_path }" >
                <div class="hgs-content">
                    <a href="${pageContext.request.contextPath}/userAction_openDoerSpace?userId=${u.uid}" target="_blank"><h4>${u.user_name }</h4></a>
                    <p>${u.description }</p>
                </div>
            </div>
            </c:forEach>
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
<script src="js/jquery-1.10.2.min.js"></script> 
<script src="js/jqthumb.js"></script>
<script language="javascript" type="text/javascript">
			$('.img1').jqthumb({
 		classname: 'jqthumb',  
        width          : 330,  
        height         : 200,  
        showoncomplete : true  });
</script>
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script src="js/jquery.skippr.js"></script>
<script src="js/jquery.scrollto.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>