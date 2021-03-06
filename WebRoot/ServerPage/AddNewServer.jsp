<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>新增我的服务</title>
    <meta name="content-type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />   
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" type="text/css" />
<script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="../js/jquery.validate.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
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

<script type="text/javascript">
	$(function(){
		$("#myform").validate({
			rules:{
				"serverName":{
					"required":true,
				},
				"serverDescribtion":{
					"required":true,
					"rangelength":[1,600]
				},
				"lowLine":{
					"required":true,
				},
				"serverCover":{
					"required":true
				}
			},
			messages:{
				"serverName":{
					"required":"服务项目名不能为空",
				},
				"password":{
					"required":"服务内容描述不能为空",
					"rangelength":"服务内容描述长度不超过300字"
				},
				"lowLine":{
					"required":"价格底线不能为空",
				}
			}
		});
	});

</script>

</head>
<body>

	<div class="container"
		style="width: 100%; background: url('../img/addNew_bg.jpg');">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="background: #fff; padding: 40px 80px; margin: 30px; border: 7px solid #ccc;">
				<font>新增个人服务   >> <span style="color:red;"><b>Step One 基本信息</b></span> >>Step Two 关联相关样本作品</font>
				<form class="form-horizontal" action="/DoersInLocal/addServerAction_addNewServer" method="post" style="margin-top: 5px;" enctype="multipart/form-data">
					<div class="form-group">
						<label for="serverName" class="col-sm-2 control-label">服务项名称</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="serverName" name="serverName"
								placeholder="请填写课提供的服务名称">
						</div>
					</div>
					<div class="form-group">
						<label for="serverDescribtion" class="col-sm-2 control-label">内容描述</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="serverDescribtion" name="serverDescribtion"
								placeholder="清奇地描述一下自己get的奇特技能吧~~">
						</div>
					</div>
					<div class="form-group">
						<label for="talkTime" class="col-sm-2 control-label">协约期</label>
						<div class="col-sm-6">
							<input class="form-control" id="talkTime" name="talkTime" pattern="[3-10]" style="width:100px;"
								size="2"> 
							<br><span style="color:grey;size:10px">（设定在服务开启前的协商时间长度，默认为3天，最长为10天.单位：天）</span>
						</div>
					</div>
					<div class="form-group">
						<label for="cover" class="col-sm-2 control-label">服务图片</label>
						<div class="col-sm-6">
							<input type="file" id="cover" name="cover" accept="image/*">
						</div>
					</div>
					<div class="form-group">
						<label for="lowLine" class="col-sm-2 control-label">价格底线</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="lowLine" name="lowLine"
								placeholder="设定交易的最低酬劳,单位：元"> 
								<br><span style="color:grey;size:10px">（我们将根据设定酬劳为您筛选合适的交易对象）</span>
						</div>
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