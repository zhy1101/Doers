<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Do 活动</title>
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
                    <li  class="active"><a href="/Doers/Activity/ActivityCenter.jsp">Do 活动</a></li>
                    <li><a href="hiview.html">Do 交易</a></li>
                    <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
            </div>
        </nav>
</header>
<section class="view-header">
    <div class="container">
        <div class="row">
             <div class="col-sm-8" style="margin: 0;padding: 0px 0px 0px 15px;">
                 <a href="hiview-info.html">
                 <div class="gallery-item" style="height: 400px; overflow: hidden;">
                     <img src="../../Doers/img/img3.jpg" class="img-responsive">
                     <div class="info">
                         <div class="info-con">
                             <h3>置顶活动标题</h3>
                             <p>活动摘要内容，可只显示指定字节的内容</p>
                         </div>
                     </div>
                     <div class="img-caption">
                         <h3>活动标题</h3>
                         <p>2015-7-15</p>
                     </div>
                 </div>
                 </a>
             </div>
            <div class="col-sm-4" style="margin: 0;padding: 0px 15px 0px 0px;">
                <div class="col-sm-12" style="margin: 0;padding: 0px;">
                    <a href="hiview-info.html">
                    <div class="gallery-item" style="height: 200px; overflow: hidden;">
                        <img src="../../Doers/img/img2.jpg" class="img-responsive">
                        <div class="info">
                            <div class="info-con">
                                <h3>置顶活动标题</h3>
                                <p> 摘要内容，可只显示指定字节的内容</p>
                            </div>
                        </div>
                        <div class="img-caption">
                            <h3>活动标题</h3>
                            <p>2015-7-15</p>
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-sm-12" style="margin: 0;padding: 0px;">
                    <a href="hiview-info.html">
                    <div class="gallery-item" style="height: 200px; overflow: hidden;">
                        <img src="../../Doers/img/img1.jpg" class="img-responsive">
                        <div class="info">
                            <div class="info-con">
                                <h3>置顶活动标题</h3>
                                <p> 摘要内容，可只显示指定字节的内容</p>
                            </div>
                        </div>
                        <div class="img-caption">
                            <h3>活动标题</h3>
                            <p>2015-7-15</p>
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
                <div class="view-content-left animated" data-animation="bounceIn" data-delay="0">
                    <a href="hiview-info.html">
                        <div class="gallery-item">
                            <img src="../../Doers/img/img3.jpg" class="img-responsive">
                            <div class="info">
                                <div class="info-con"> 所属栏目</div>
                            </div>
                        </div>
                    </a>
                    <div class="content1">
                        <h4><a href="hiview-info.html">活动标题</a></h4>
                        <p>活动活动活动活动摘要</p>
                        <span class="pull-left"><i class="fa fa-clock-o"></i>2015-7-18</span>
                        <span class="pull-right">n人参与</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="view-content-left animated" data-animation="bounceIn" data-delay="0">
                    <a href="hiview-info.html">
                        <div class="gallery-item">
                            <img src="../../Doers/img/img1.jpg" class="img-responsive">
                            <div class="info">
                                <div class="info-con"> 所属栏目</div>
                            </div>
                        </div>
                    </a>
                    <div class="content1">
                        <h4><a href="hiview-info.html">活动标题</a></h4>
                        <p>文章摘要文章摘要文章摘要文章摘要文章摘要</p>
                        <span class="pull-left"><i class="fa fa-clock-o"></i>2015-7-18</span>
                        <span class="pull-right">3条评论</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="view-content-left animated" data-animation="bounceIn" data-delay="0">
                    <a href="hiview-info.html">
                        <div class="gallery-item">
                            <img src="../../Doers/img/img2.jpg" class="img-responsive">
                            <div class="info">
                                <div class="info-con">所属栏目</div>
                            </div>
                        </div>
                    </a>
                    <div class="content1">
                        <h4><a href="hiview-info.html">活动标题</a></h4>
                        <p>文章摘要文章摘要文章摘要文章摘要文章摘要</p>
                        <span class="pull-left"><i class="fa fa-clock-o"></i>2015-7-18</span>
                        <span class="pull-right">3条评论</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="view-content-left animated" data-animation="bounceIn" data-delay="0">
                    <a href="hiview-info.html">
                        <div class="gallery-item">
                            <img src="../../Doers/img/img5.jpg" class="img-responsive">
                            <div class="info">
                                <div class="info-con">所属栏目</div>
                            </div>
                        </div>
                    </a>
                    <div class="content1">
                        <h4><a href="hiview-info.html">活动标题</a></h4>
                        <p>文章摘要文章摘要文章摘要文章摘要文章摘要</p>
                        <span class="pull-left"><i class="fa fa-clock-o"></i>2015-7-18</span>
                        <span class="pull-right">3条评论</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="view-content-left animated" data-animation="bounceIn" data-delay="0">
                    <a href="hiview-info.html">
                        <div class="gallery-item">
                            <img src="../../Doers/img/img4.jpg" class="img-responsive">
                            <div class="info">
                                <div class="info-con">所属栏目</div>
                            </div>
                        </div>
                    </a>
                    <div class="content1">
                        <h4><a href="hiview-info.html">活动标题</a></h4>
                        <p>文章摘要文章摘要文章摘要文章摘要文章摘要</p>
                        <span class="pull-left"><i class="fa fa-clock-o"></i>2015-7-18</span>
                        <span class="pull-right">3条评论</span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <ul class="pager">
                    <li class="previous disabled"><a href="#">&larr; 上一页</a></li>
                    <li class="next"><a href="#">下一页 &rarr;</a></li>
                </ul>
            </div>
            <div class="col-sm-4">
                        <div class="view-content-right">
                            <h1>最新赛事</h1>
                            <div class="aside-top">
                            <a href="hiview-info.html"><img src="../../Doers/img/img1.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                            <a href="hiview-info.html"><img src="../../Doers/img/img2.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">看看硅谷的科技企业是如何开除员工的</a>
                            <a href="hiview-info.html"><img src="../../Doers/img/img3.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">大圣归来 三里屯优衣库试衣间是怎么刷爆朋友圈的</a>
                            <a href="hiview-info.html"><img src="../../Doers/img/img4.jpg" style="float:left;height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">不要被VR的火热骗了 至少现在它还真没什么卵用</a>
                            </div>
                        </div>
                        <div class="view-content-right" style="margin: 20px 0;">
                            <img src="../../Doers/img/img5.jpg" class="img-responsive" />
                        </div>

                        <div class="view-content-right">
                            <h1>热门培训</h1>
                            <div class="aside-top">
                            <a href="hiview-info.html"><img src="../../Doers/img/img1.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                            <a href="hiview-info.html"><img src="../../Doers/img/img2.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                            <a href="hiview-info.html"><img src="../../Doers/img/img3.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
                            <a href="hiview-info.html"><img src="../../Doers/img/img4.jpg" style="height: 40px;width: 40px;border-radius: 50%;margin-right: 15px">2015应该学习的前端语言与框架</a>
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
                        <li><a>加入我们</a></li>
                        <li><a>其他</a></li>
                        <li><a>其他</a></li>
                    </ul>
                </div>
                <div class="col-sm-4">
                    <h4>合作伙伴</h4>
                </div>
            </div>

        </div>
    </div>
    <div class="footerbot">Made by YU</div>
</footer>

<script type="text/javascript" src="../../Doers/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../../Doers/bootstrap/js/bootstrap.min.js"></script>
<script src="../../Doers/js/jquery.scrollto.min.js"></script>
<script src="../../Doers/js/jquery.easing.min.js"></script>
<script src="../../Doers/js/jquery.parallax-1.1.3.js" type="text/javascript"></script>
<script type="text/javascript" src="../../Doers/js/main.js"></script>
</body>
</html>