<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>新增我的服务</title>
    <meta name="content-type" content="text/html; charset=UTF-8">
    
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" type="text/css" />
<script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
<!-- 引入表单校验jquery插件 -->
<script src="../js/jquery.validate.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="../css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

font {
	color: #3164af;
	font-size: 18px;
	font-weight: normal;
	padding: 0 10px;
}

.error{
	color:red
}
</style>
</head>
<body>
	<div class="container"
		style="width: 100%; background: url('../img/addNew_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>新增个人服务   >> Step One 基本信息 >> <span style="color:red;"><b>Step Two 关联相关样本作品</b></span></font>
				<form id="myform" class="form-horizontal" action="${pageContext.request.contextPath }/serverConnectProductionAction_connectingPro" method="post" style="margin-top: 5px;">
				   <div style="width:700px; height:400px; overflow:scroll; overflow-x:hidden;">
				   <input name="server_id" type="hidden" value="${server_id}">
				   <table width="600px" align="center" >
					<c:forEach items="${userProList}" var="selectingPro">
						<tr>
						<td style="width:20%"><input type="checkbox" name="no" value="${selectingPro.productionId }" >
						</td>
						<td style="width:30%"><img src="${selectingPro.coverURL}" width="80px" height="80px"></td>
						<td style="width:50%">${selectingPro.productionTitle}</td>
						</tr>	
					</c:forEach>
					</table>
					</div>
			        <div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="提交" name="submit" height: 35px; width: 100px; color: white;">
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>
	</body>
</html>