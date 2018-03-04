<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Do 服务列表</title>
	<link rel="stylesheet" href="../../Doers/bootstrap/css/bootstrap.min.css" type="text/css" />
	<script src="../../Doers/js/jquery-1.11.3.min.js" type="text/javascript"></script>
	<script src="../../Doers/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- 引入自定义css文件 style.css -->
	<link rel="stylesheet" href="css/style.css" type="text/css" />
	<style>
body {
	margin-top: 20px;
	margin: 0 auto;
	width: 100%;
}
.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.clear{
	clear:both;
}

.top{
	width:1210px;
	margin:20px auto;
	overflow:hidden;
}

.top div{
	
}

.search{
	background-color: #FCFDEF;
	padding:10px 200px 10px 0px;
}

.content{
	width:1210px;
	margin:0 auto;
}

.news{
	border:1px solid #E7E7E7;
	height:auto;
	height:300px;
}

.mynav{
	width:1210px;
	margin:0 auto;
}

.myrow .col-md-10 div{
	border-bottom:1px solid #E7E7E7;
	border-left:1px solid #E7E7E7;
	padding:0px;
}

.row p{margin:0;}

.myrow .yes-right-border{
	border-right:1px solid #E7E7E7;
}
.myrow .no-left-border{
	border-left:0px;
}
</style>
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
                    <li class="active"><a href="${pageContext.request.contextPath}/serverDetailAction_loadingAllServers">Do 服务</a></li>
                    <li><a href="hiview.html">Do 活动</a></li>
                    <li><a href="hiview.html">Do 交易</a></li>
                    <li><a href="/Doers/UserWorkspace/UserWorkSpace.jsp">Do Myself</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="搜索">
                </form>
            </div>
        </nav>
</header>
	<br><br><br>
	<div>
	</div>
	<hr>
		<div class="row" style="width: 1210px; margin: 0 auto;">		
		<c:forEach items="${pageBean.list }" var="ser">		
			<div class="col-md-2" style="height:250px">
				<a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.serverId}"> 
					<img src="${ser.serverCover}" width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.serverId}" style='color: #6082b6'>${ser.serverName }</a>
				</p>
				<p>
					<font color="#FF0000">预估价：&yen;${ser.lowLine }</font>
				</p>
			</div>	
		</c:forEach>
	</div>
	
	
		<!--分页 -->
	<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
		
			<!-- 上一页 -->
			<c:if test="${pageBean.currentPage==1 }">
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				<li>
					<a href="${pageContext.request.contextPath}/serverDetailAction?currentPage=${pageBean.currentPage-1 }" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
			</c:if>
			
		
			<!-- 显示每一页 -->
			<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
				<!-- 判断是否是当前页 -->
				<c:if test="${page==pageBean.currentPage }">
					<li class="active"><a href="javascript:void(0);">${page }</a></li>
				</c:if>
				<c:if test="${page!=pageBean.currentPage }">
					<li><a href="${pageContext.request.contextPath}/serverDetailAction?currentPage=${page }">${page }</a></li>
				</c:if>
			</c:forEach>
			
			
			<!-- 下一页 -->
			<c:if test="${pageBean.currentPage==pageBean.totalPage }">
				<li class="disabled">
					<a href="javascript:void(0);" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
			<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
				<li>
					<a href="${pageContext.request.contextPath}/serverDetailAction?currentPage=${pageBean.currentPage+1 }" aria-label="Next"> 
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</c:if>
			
		</ul>
	</div>
	<!-- 分页结束 -->
</body>
</html>