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
					<p>服务商账户名称：XXDoers</p><p>订单编号：XXXXXXXXXX</p>
					<div class="finance-news-table">
						<table>
							<tbody>
								<tr>
									<th >服务商联系方式</th>
									<th colspan="1">姓名</th>
									<th colspan="1">截至日期</th>
									<th colspan="2">成交价</th>
								</tr>
								<tr>
									<td>18301226993</td>
									<td colspan="1">郑爽</td>
									<td colspan="1">
									<select>
											<option>2018</option>
											<option>2019</option>
											<option>2020</option>
										</select>
									年
									<select>
											<option>01</option>
											<option>02</option>
											<option>03</option>
											<option>04</option>
											<option>05</option>
											<option>06</option>
											<option>07</option>
											<option>08</option>
											<option>10</option>
											<option>11</option>
											<option>12</option>
										</select>
									月
										<select>
											<option>01</option>
											<option>02</option>
											<option>03</option>
											<option>04</option>
											<option>05</option>
											<option>06</option>
											<option>07</option>
											<option>08</option>
											<option>10</option>
										</select>日
									</td>
									<td colspan="2">XX Do币</td>
								</tr>
								<tr>
									<th>用户账户名称</th>
									<th>服务项目名称</th>
									<th>交货方式</th>
								</tr>
								<tr>
									<td>万龙花园</td>
									<td>130m²</td>
									<td>4号楼4单元6层01号</td>
								</tr>
								<tr>
									<th colspan="4">服务详细条约（请详细写明与用户协商好的服务事项，既是诚实口碑，也是维权基础）</th>
								</tr>
								<tr>
									<td colspan="4">。。。。。。。。。</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<h5>补充信息（可上传必要说明性附件）</h5>
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
											<input type="file">
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<a href="#" class="finance-content-middle-form-btn ">提交</a>
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