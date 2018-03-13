<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>留言板</title>
    <meta name="content-type" content="text/html; charset=UTF-8">
    <style type="text/css">
    textarea{
    background:transparent;
    width: 360px;
    height: 250px;
    max-width: 360px;
    max-height: 250px;
    resize: none;}
    </style>
    <link rel="shortcut icon" href="../../Doers/favicon.ico" />
  </head>
  <body background="../img/leaveMsg.jpg" >
  <form action="${pageContext.request.contextPath}/leaveMessageAction_makeAMessage" method="post" id="leaveMsg">
  <input type="hidden" name="toUser.uid" value="${production.user.uid }"/>
  <input type="hidden" name="fromUser.uid" value="${user.uid }"/>
  <div style="text-align:center">
   	<div style="margin-top: 200px;width:360px;text-align:right">
   		<span>To</span>&nbsp;<span>${production.user.user_name}</span>
   	</div>
   	<textarea form="leaveMsg" name="content"></textarea>
   	<div style="margin-top:20px;width:360px;text-align:right">
   		<span>From</span>&nbsp;<span>${user.user_name}</span>
   	</div>
   	   		<button type="submit">传递悄悄话</button>
   	 </form>
   	</div>
  </body>
</html>
