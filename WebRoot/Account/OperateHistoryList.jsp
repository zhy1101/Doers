<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>账户操作记录</title>
<link rel="shortcut icon" href="../../Doers/favicon.ico" />
</head>
<body style="text-align:center">
	<div style="margin:0 auto">
	 <h2>账户操作记录</h2>
	 <table style="width:400px;margin:0 auto;border:1px solid #f0f0f0">
	 	<tr style="width:100%;height:80px;"><th style="width:30%;text-align:center;border:1px solid #f0f0f0">时间</th><th style="width:50%;text-align:center;border:1px solid #f0f0f0">操作详情</th><th style="width:20%;text-align:center;border:1px solid #f0f0f0">操作金额</th></tr>
	 	<c:forEach items="${AllOperateList }" var="op">
	 		<tr style="width:100%;height:80px;border:1px solid #f0f0f0">
	 			<td style="width:30%;text-align:center;border:1px solid #f0f0f0">${op. time }</td>
	 			<c:if test="${op.behave.dict_id==58 }">
	 			<td style="width:50%;text-align:center;border:1px solid #f0f0f0">充值Do币账户</td>
	 			</c:if>
	 			<c:if test="${op.behave.dict_id==59 }">
	 			<td style="width:50%;text-align:center;border:1px solid #f0f0f0">获得劳务报酬</td>
	 			</c:if>
	 			<c:if test="${op.behave.dict_id==60 }">
	 			<td style="width:50%;text-align:center;border:1px solid #f0f0f0">支付得劳务报酬</td>
	 			</c:if>
	 			<c:if test="${op.behave.dict_id==61 }">
	 			<td style="width:50%;text-align:center;border:1px solid #f0f0f0">劳务提现</td>
	 			</c:if>
	 			<td style="width:20%;text-align:center;border:1px solid #f0f0f0">${op.doMoeny }</td>
	 		</tr>
	 	</c:forEach>
	 </table>
	</div>
</body>
</html>