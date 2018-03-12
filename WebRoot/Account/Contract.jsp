 <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>填写合约</title>
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/base.css">
	<link rel="stylesheet" type="text/css" href="../../Doers/Account/css/home.css">
</head>
<body>
<section id="finance-content">
	<div class="finance-content clearfix">
		<div class="finance-content-middle">
			<div class="finance-content-middle-title">
				<h4>提交合约</h4>
			</div>
			<div class="finance-content-middle-form">
				<h5>基本设置</h5>
				<div class="finance-add-agent">
					<p>服务商账户名称：${order.serverUser.user_name }</p><p>订单编号：${order.orderId }</p>

					<div class="finance-news-table">
						<table>
						<form action="${pageContext.request.contextPath}/contractAction_uploadContract" method="post">
												<input name="orderId" type="hidden" value="${order.orderId }">
							<tbody>
								<tr>
									<th >服务商联系方式</th>
									<th colspan="1">姓名</th>
									<th colspan="1">截至日期</th>
									<th colspan="2">成交价</th>
								</tr>
								<tr>
									<td>${order.serverUser.phone}</td>
									<td colspan="1"><input name="realName" type="text"/></td>
									<td colspan="1">
									<select name ="predict_year" id ="predict_year">
			<option value="">--年份--</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
	</select>
	<select name ="predict_month" id ="predict_month" onchange="changeday_num(this.value)">
			<option value="">--月--</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
	</select>
	<script tpye="test/javascript">
		 var dayNum = new Array(12);
		 dayNum[0] = new Array("1","2","3","4","5","6","7","8","9","10"
				               ,"11","12","13","14","15","16","17","18",
				               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 dayNum[1] = new Array("1","2","3","4","5","6","7","8","9","10"
	               				,"11","12","13","14","15","16","17","18",
	              				 "19","20","21","22","23","24","25","26","27","28");
		 dayNum[2] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 dayNum[3] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30");
		 dayNum[4] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 dayNum[5] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30");
		 dayNum[6] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 dayNum[7] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 dayNum[8] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30");
		 dayNum[9] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 dayNum[10] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30");
		 dayNum[11] = new Array("1","2","3","4","5","6","7","8","9","10"
	               ,"11","12","13","14","15","16","17","18",
	               "19","20","21","22","23","24","25","26","27","28","29","30","31");
		 
		 function changeday_num(val){
				
				//获取第二个下拉列表
				var dayEle = document.getElementById("predict_day");
				//清空第二个下拉列表的option内容
				dayEle.options.length=0;				
				//2.遍历二维数组中的月份
				for(var i=0;i<dayNum.length;i++){
					//注意，比较的是角标
					if(val==i+1){
						//3.遍历用户选择的月份下的天数
						for(var j=0;j<dayNum[i].length;j++){
							//4.创建天数的文本节点
							var textNode = document.createTextNode(dayNum[i][j]);
							//5.创建option元素节点
							var opEle = document.createElement("option");
							opEle.value=dayNum[i][j];
							//6.将天数的文本节点添加到option元素节点
							opEle.appendChild(textNode);
							//8.将option元素节点添加到第二个下拉列表中去
							dayEle.appendChild(opEle);
						}
					}
				}
			}
	</script>
	<select name ="predict_day" id ="predict_day">
			<option value="">--日--</option>
	</select> 
				</td>
						<td colspan="2"><input type="text" name="price"> Do币</td>
								</tr>
								<tr>
									<th>客户名称</th>
									<th>服务项目名称</th>
									<th>交货方式</th>
								</tr>
								<tr>
									<td>${order.customerUser.user_name }</td>
									<td>${order.server.serverName }</td>
									<td><input type="text" name="conveyStyle"/></td>
								</tr>
								<tr>
									<th colspan="4">服务详细条约（请详细写明与用户协商好的服务事项，既是诚实口碑，也是维权基础）</th>
								</tr>
								<tr>
									<td colspan="4"><input type="text" name="content"/></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<h5>补充信息（可上传必要说明性附件,多个附件请打包成压缩包上传）</h5>
				<div class="finance-add-agent finance-add-agent-clear">
					<div class="finance-news-table">
						<table>
							<tbody>
								<tr>
									<th>添加附件</th>
								</tr>
								<tr>
									<td>
										<div class="finance-up-img">
											<img src="themes/img/upImg.jpg" style="width:148px;height:63px">
											<input type="file" name="file"/>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<a href="${pageContext.request.contextPath}/contractAction_uploadContrct" class="finance-content-middle-form-btn "><input type="submit">提交</input></a>
			</form>
			</div>
		</div>
	</div>
</section>
<script src="../../Doers/Account/js/jquery-3.2.1.min.js"></script>
<script src="../../Doers/Account/js/address.js"></script>
<script type="text/javascript">
    $(function(){
        $("#sjld").sjld("#shenfen","#chengshi","#quyu");
    });
</script>
<script type="text/javascript">
    $('.finance-screen a').each(function(index) {
        $(this).click(function() {
            $(this).addClass('pitch').siblings().removeClass('pitch');
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        var menuParent = $('.menu > .ListTitlePanel > div');//menu div
        var menuList = $('.menuList');
        $('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) { //list
            $(this).click(function(){
                if($(menuList[i]).css('display') == 'none'){
                    $(menuList[i]).slideDown(300);
                }
                else{
                    $(menuList[i]).slideUp(300);
                }
            });
        });
    });
</script>
</body>
</html>