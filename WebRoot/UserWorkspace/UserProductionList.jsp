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
<img src="/DoersInLocal/img/ProBanner.png">
<br>
<c:forEach items="${myProductionList}" var="pro">
<div class="card-box">
    <div class="card-img">
        <a href="" class="card-img-hover" target="_blank" z-st="home_main_card_cover">
            <img src="${pro.coverURL }">
        </a>
    </div>
    <div class="card-info">
        <p class="card-info-title">
            <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${pro.productionId} " class="title-content" target="_blank" z-st="home_main_card_title">${pro.productionTitle }</a>    
        </p>
        <p class="card-info-type" ><span>${pro.big_kind.dict_item_name}-<span>${pro.small_kind.dict_item_name}</p>
        <p class="card-info-item">      
           	共<span style="color:blue;">${pro.zan}</span>人 赞过          
        </p>
    </div>
     <div class="card-item">
        <span class="user-avatar showMemberCard">
            <a href="javascript:if(confirm('确认删除该发布的作品吗?')) location='${pageContext.request.contextPath}/userAction_deleteProById?pid=${pro.productionId}' "   z-st="home_main_card_user">
    		<button>删除</button>
        	</a>
        </span>
    </div>
</div> 
</c:forEach>
<br>
<img src="/DoersInLocal/img/articleBanner.png">
<c:forEach items="${myArticleList}" var="art">
<div class="card-box">
    <div class="card-img">
        <a href="javascript:void(0)" class="card-img-hover" target="_blank" z-st="home_main_card_cover">
            <img src="${art.coverURL }">
        </a>
    </div>
    <div class="card-info">
        <p class="card-info-title">
            <a href="${pageContext.request.contextPath}/productionDetailAction_showArticleDetail?articleId=${art.articleId} " class="title-content" target="_blank" z-st="home_main_card_title">${art.articleTitle }</a>    
        </p>
        <p class="card-info-type" >${art.word1}&nbsp;${art.word2}&nbsp;${art.word3}</p>
        <p class="card-info-item">      
           	共<span style="color:blue;">${art.push}</span>人 赞过          
        </p>
    </div>
     <div class="card-item">
        <span class="user-avatar showMemberCard">
            <a href="javascript:if(confirm('确认删除该发布的作品吗?')) location=' ${pageContext.request.contextPath}/userAction_deleteArcById?aid=${art.articleId}' "  z-st="home_main_card_user">
    		<button>删除</button>
        	</a>
        </span>
    </div>
</div> 
</c:forEach>
</BODY>
</HTML>