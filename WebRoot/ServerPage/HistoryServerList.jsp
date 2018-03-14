<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="../../UserWorkspace/common/css/main.css">
	<link rel="shortcut icon" href="../../Doers/favicon.ico" />
</HEAD>
<BODY>
<c:forEach items="${MyServersList}" var="ser">
<div class="card-box">
    <div class="card-img">
        <a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.serverId} " class="card-img-hover" target="_blank" z-st="home_main_card_cover">
            <img src="${ser.serverCover }">
        </a>
    </div>
    <div class="card-info">
        <p class="card-info-title">
            <a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.serverId} " class="title-content" target="_blank" z-st="home_main_card_title">${ser.serverName }</a>    
        </p>
        <p class="card-info-type" >协约期： ${ser.talkTime } 天</p>
    </div>
     <div class="card-item">
        <span class="user-avatar showMemberCard">
            <a href="${pageContext.request.contextPath}/serverConnectProductionAction_refreshConnectionStepOne?server_id=${ser.serverId}"  target="_blank" z-st="home_main_card_user">
    		<button>重新关联</button>
        	</a>
        	<a href="javascript:if(confirm('确认删除该发布的项目吗?')) location='${pageContext.request.contextPath}/serverDetailAction_deleteServerById?serverId=${ser.serverId}' "  z-st="home_main_card_user" style="margin-left:9px">
    		<button>删除</button>
        	</a>
        </span>
    </div>
</div> 
</c:forEach>
</BODY>
</HTML>