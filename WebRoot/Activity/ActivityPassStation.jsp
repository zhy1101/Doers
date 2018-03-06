 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>活动详情</title>
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
  <div class="content-wrap">
            <div class="activity-content-top">
                <div class="content-center-box">
                    <div class="content-details-box">
                        <span class="details-picture"><img src="http://img.zcool.cn/community/035476758da004600000140717d34e8.jpg@440w_330h_1c_1e_2o"></span>
                        <h2 class="details-title">${activity.activityTitle }</h2>

                        <div class="activity-lie">
                            活动时间 : <span class="other-color">${activity.startTime }&nbsp;至&nbsp;${activity.endTime }</span>
                            <br/> 活动类型 : <a href="javascript:void(0);">${activity.activityType.dict_item_name }</a>
                            <br/> 活动策划 : <a href="javascript:void(0);">${activity.holdGroup}</a>
                        </div>
                        <div class="details-describe-box"><p class="details-describe">${activity.activityContent }</p></div>
                       <c:if test="${activity.activityType.dict_id ==54 }">
                        <div class="details-main-btn" >     
                                <a href="javascript:void(0);" title="上传活动作品" id="" onclick="takePartInActivity('${activity.activityId}','${activity.activityType.dict_id}')"
                                   class="btn-default-main details-btn upload-active-work">参加并上传活动作品</a>
                        </div>
                        </c:if>
                        <c:if test="${activity.activityType.dict_id !=54 }">
                        <div class="details-main-btn" >     
                                <a href="javascript:void(0);" title="参与活动" id="takePartInActivity('${activity.activityId}','${activity.activityType.dict_id}')"
                                   class="btn-default-main details-btn upload-active-work">参与活动</a>
                        </div>
                        </c:if>
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
<script type="text/javascript">			
			function takePartInActivity(activityId,typeId){
				var isTakeIn = confirm("您确认要参与该活动吗？");
				if(isTakeIn){
					//要参与
					location.href = "${pageContext.request.contextPath}/ActivityAction_takePartInActivity?activityId="+activityId;
					if(typeId == 54){
					window.open('${pageContext.request.contextPath}/UserWorkspace/AddNewProduction.jsp','_blank','');				
					}else{
					window.open('${activity.linkURL}','_blank','');
					}				
				}
			}
		</script>
</body>
</html>