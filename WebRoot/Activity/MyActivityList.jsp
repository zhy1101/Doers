<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />
<link rel="stylesheet" href="../../UserWorkspace/common/css/main.css">
</HEAD>
<BODY>
<div style="margin-left:100px">
<img src="../../img/adBanner.png">
</div>
<c:forEach items="${myActivityList}" var="item">
<div class="card-box" style="margin-top:30px;margin-left:20px">
    <div class="card-info">
        <p class="card-info-title">
            <a href="${pageContext.request.contextPath}/activityAction_gotoActivityPassPage?activityId=${item.activity.activityId} " class="title-content" target="_blank" z-st="home_main_card_title">${item.activity.activityTitle }</a>    
        </p>
        <p class="card-info-type" ><span>${item.activity.activityType.dict_item_name}</p>
        <p class="card-info-item">      
           	活动时间：<span style="color:blue;">${item.activity.startTime}~${item.activity.endTime}</span>          
        </p>
    </div>
</div> 
</c:forEach>
</BODY>
</HTML>