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
        <a href="" class="card-img-hover" target="_blank" z-st="home_main_card_cover">
            <img src="${ser.serverCover }">
        </a>
    </div>
    <div class="card-info">
        <p class="card-info-title">
            <a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.serverId} " class="title-content" target="_blank" z-st="home_main_card_title">${ser.serverName }</a>    
        </p>
        <p class="card-info-type" >协约期： ${ser.talkTime } 天</p>
        <p class="card-info-item">      
           	共为<span style="color:blue;">0</span>人 服务过          
        </p>
    </div>
     <div class="card-item">
        <span class="user-avatar showMemberCard">
            <a href=""  target="_blank" z-st="home_main_card_user">
    		<button>管理关联</button>
        	</a>
        </span>
        <span class="time" ><button style="margin-top:3px">删除</button></span>
    </div>
</div> 
</c:forEach>
</BODY>
</HTML>