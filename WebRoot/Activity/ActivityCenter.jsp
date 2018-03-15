 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Do 活动</title>
    <link rel="shortcut icon" href="../../Doers/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="../../Doers/bootstrap/css/candy-box.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/animate.min.css" />
    <link rel="stylesheet" type="text/css" href="../../Doers/css/style.css" />
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
	             <li ><a href="${pageContext.request.contextPath}/productionListAction_getAllProductions">Do 博物</a></li>
	             <li><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers?checkAll=yes">Do 服务</a></li>
	             <li class="active"><a href="${pageContext.request.contextPath}/activityAction_loadingActivityCenter">Do 活动</a></li>
	             <li><a href="${pageContext.request.contextPath}/accountAction_OpenMyCart">Do 交易</a></li>
	             <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
            </div>
        </nav>
</header>
<section class="view-header">
    <div class="container">
        <div class="row">
             <div class="col-sm-8" style="margin: 0;padding: 0px 0px 0px 15px;">
                 <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=1" target="_blank">
                 <div class="gallery-item" style="height: 400px; overflow: hidden;">
                     <img src="../../Doers/img/activity1.jpg" class="img-responsive imgbig">
                     <div class="info">
                         <div class="info-con">
                             <h3>狗年晒汪——门外狗粮三两箱，不及汪汪遛我情</h3>
                             <p>晒出你与汪星人日常，分享生活中它遛你的点滴温暖。戊戌狗年，祝大家百事兴旺！</p>
                         </div>
                     </div>
                     <div class="img-caption">
                         <h3>狗年晒汪——门外狗粮三两箱，不及汪汪遛我情</h3>
                         <p>2018-2-15</p>
                     </div>
                 </div>
                 </a>
             </div>
            <div class="col-sm-4" style="margin: 0;padding: 0px 15px 0px 0px;">
                <div class="col-sm-12" style="margin: 0;padding: 0px;">
                    <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=2" target="_blank">
                    <div class="gallery-item" style="height: 200px; overflow: hidden;">
                        <img src="../../Doers/img/banner2.jpg" class="img-responsive imgsmall">
                        <div class="info">
                            <div class="info-con">
                                <h3>2017最据匠心的美好工艺之作</h3>
                                <p> 第二届谭木匠创意产品设计征集公选</p>
                            </div>
                        </div>
                        <div class="img-caption">
                            <h3>延续你的创作力量</h3>
                            <p>2017-11-10</p>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-sm-12" style="margin: 0;padding: 0px;">
                    <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=3" target="_blank">
                    <div class="gallery-item" style="height: 200px; overflow: hidden;">
                        <img src="../../Doers/img/banner6.jpg" class="img-responsive imgsmall">
                        <div class="info">
                            <div class="info-con">
                                <h3>颜值担当，皮肤有责</h3>
                                <p> 搜狗输入法手机皮肤创意大赛</p>
                            </div>
                        </div>
                        <div class="img-caption">
                            <h3>颜值担当，皮肤有责</h3>
                            <p>2017-12-18</p>
                        </div>
                    </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="view-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <h1>活动列表</h1>
                <c:forEach items="${activityList }" var="activity">
                <div class="view-content-left animated" data-animation="bounceIn" data-delay="0">
                    <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=${activity.activityId}" target="_blank">
                        <div class="gallery-item">
                            <img src="${activity.activityCoverURL }" class="img-responsive imglist">
                            <div class="info">
                                <div class="info-con">${activity.activityType.dict_item_name }</div>
                            </div>
                        </div>
                    </a>
                    <div class="content1">
                        <h4><a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=${activity.activityId}" target="_blank">${activity.activityTitle}</a></h4>
                        <p>${activity.activityContent}</p>
                        <span class="pull-left"><i class="fa fa-clock-o"></i>${activity.startTime}</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                </c:forEach>
                <ul class="pager">
                    <li class="previous disabled"><a href="#">&larr; 上一页</a></li>
                    <li class="next"><a href="javascript:void(0);">下一页 &rarr;</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                        <div class="view-content-right">
                            <h1>最新赛事</h1>
                            <div class="aside-top">
                            <c:forEach items="${competitionlist }" var="compet">
                            <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=${compet.activityId}" target="_blank"><img src="${compet.activityCoverURL }" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">${compet.activityTitle}</a>
                     		</c:forEach>
                            </div>
                        </div>
                        <div class="view-content-right" style="margin: 20px 0;">
                            <img src="../../Doers/img/img5.jpg" class="img-responsive" />
                        </div>

                        <div class="view-content-right">
                            <h1>热门培训</h1>
                            <div class="aside-top">
                            <c:forEach items="${classlist }" var="lesson">
                            <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=${lesson.activityId}" target="_blank""><img src="${lesson.activityCoverURL }" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">${lesson.activityTitle}</a>
                           </c:forEach>
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

<script type="text/javascript" src="../../Doers/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../../Doers/bootstrap/js/bootstrap.min.js"></script>
<script src="../../Doers/js/jquery.scrollto.min.js"></script>
<script src="../../Doers/js/jquery.easing.min.js"></script>
<script src="../../Doers/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript" src="../../Doers/js/main.js"></script>
<script type="text/javascript" src="../../Doers/js/jqthumb.js"></script>
<script language="javascript" type="text/javascript">
		$('.imgbig').jqthumb({
 		classname: 'jqthumb',  
        width          : 765,  
        height         : 400,  
        showoncomplete : true  });
        $('.imgsmall').jqthumb({
 		classname: 'jqthumb',  
        width          : 377,  
        height         : 200,  
        showoncomplete : true  });
         $('.imglist').jqthumb({
 		classname: 'jqthumb',  
        width          : 220,  
        height         : 160,  
        showoncomplete : true  });
</script>
</body>
</html>