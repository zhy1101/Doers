<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合约详情</title>
<link rel="shortcut icon" href="../../Doers/favicon.ico" />
<style>
body{text-align:center}
.zhengwen{}
</style>
</head>
<body>
	<div style="margin:0 auto;width:800px">
		<p
			style="font-size:14pt; line-height:150%; margin:0pt; orphans:0; text-align:center; widows:0">
			<span style="font-family:微软雅黑; font-size:14pt; font-weight:bold">Doers平台劳动合约</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">甲方：</span>${c.belongToOder.customerUser.user_name}(Doers平台注册用户)
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">住所：${c.belongToOder.customerUser.address}</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">联系电话：${c.belongToOder.customerUser.phone}</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">&#xa0;</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">乙方：${c.belongToOder.serverUser.user_name}(Doers平台注册用户)</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">联系电话：${c.belongToOder.serverUser.phone}</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">住址：${c.belongToOder.serverUser.address}</span>
		</p>
	
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">根据《中华人民共和国劳动合同法》及有关的劳动法律、法规和政策规定，结合甲方相关制度和乙方岗位特点，遵循自愿、平等、协商一致的原则，甲乙双方一致同意订立如下条款，以明确双方的权利和义务，并期望双方保持良好的长期聘用关系。</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt; font-weight:bold">一、合同期限</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">第一条    甲、乙双方选择以固定期限形式确定本合同期限：</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="font-family:微软雅黑; font-size:10.5pt">自${c.serverTimeStart}起至${c.serverTimeEnd }止。</span>
		</p>
		<p
			style="font-size:9pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; widows:0">
			<span style="font-family:微软雅黑; font-size:9pt">&#xa0;</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span
				style="color:#262626; font-family:微软雅黑; font-size:10.5pt; font-weight:bold">二、劳动报酬</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">第二条 甲方以计件工资方式支付乙方工资：</span>
		</p>
		
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span
				style="font-family:微软雅黑; font-size:10.5pt">计件工资:甲方应制定科学合理的劳动定额标准，双方及时协商约定计件单价。单价为：${contract.price } Do币</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span
				style="color:#262626; font-family:微软雅黑; font-size:10.5pt; font-weight:bold">三、当事人约定的其他内容</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span
				style="color:#262626; font-family:微软雅黑; font-size:10.5pt">第三条、甲乙双方约定的其他详细服务内容：</span>
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">双方经协商后，甲方于${c.serverTimeEnd }前为乙方完成如下服务：
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">${c.content }</span><br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">双方约定服务验收方式为：${c.conveyStyle }。</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span
				style="color:#262626; font-family:微软雅黑; font-size:10.5pt; font-weight:bold">四、劳动争议处理及其它</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">第四条
				双方因履行本合约发生争议，应当自劳动争议发生之日起，15天内向Doers网络科技公司客服组申请解决。</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">第五条
				甲方的交易附件作为本劳动合同的附件，与劳动合同具有同等法律效力。</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">第六条   本合同未尽事宜或与国家、北京市规定相悖的，按照有关规定执行。</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">&#xa0;</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">甲方：${c.belongToOder.customerUser.user_name}</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">${c.serverTimeStart}</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">&#xa0;</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">乙方：${c.belongToOder.serverUser.user_name}</span>
		</p>
		<p
			style="font-size:10.5pt; line-height:150%; margin:0pt; orphans:0; text-align:justify; text-indent:21pt; widows:0">
			<span style="color:#262626; font-family:微软雅黑; font-size:10.5pt">${c.serverTimeStart}</span>
		</p>
   </div>
   <div style="margin-top:50px;margin-left:50px;"><img src="../../Doers/img/yizhang.PNG"></div>
</body>
</html>