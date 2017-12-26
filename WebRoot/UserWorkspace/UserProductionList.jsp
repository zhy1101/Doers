<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="../../Doers/ProductionPage/css/main.css">
</HEAD>
<BODY>
<c:forEach items="myProductionList" var="pro">
<div class="card-box">
    <div class="card-img">
        <a href="" class="card-img-hover" title="${pro.productionTitle }"
           target="_blank" z-st="home_main_card_cover">
            <img src="${pro.coverURL }" title="${pro.productionTitle }">
        </a>
    </div>
    <div class="card-info">
        <p class="card-info-title">
            <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=<s:property value="#production.productionId" /> " class="title-content" target="_blank" z-st="home_main_card_title">${pro.productionTitle }</a>    
        </p>
        <p class="card-info-type" ><span><s:property value="#session.production.big_kind.dict_item_name"/></span><i>/</i><span><s:property value="#session.production.small_kind.dict_item_name"/></span></span></p>
        <p class="card-info-item">      
           <span class="statistics-tuijian" title="共201推荐">201</span>          
        </p>
    </div>
     <div class="card-item">
        <span class="user-avatar showMemberCard">
            <a href=""  target="_blank" z-st="home_main_card_user">
    		<button>预览编辑</button>
        	</a>
        </span>
        <span class="time">删除</span>
    </div>
</div> 
</c:forEach>
</BODY>
</HTML>