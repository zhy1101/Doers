<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Beautiful design tables in HTML in the style of a zebra.</title>
	<link rel="stylesheet" href="/Doers/UserWorkspace/common/css/leaveMsg_style.css">
</head>
<body>
<div id="container">   
	<table class="zebra">
    <caption>悄悄话信箱</caption>
		<thead>
        	<tr>
				<th>用户</th>
				<th>时间</th>
				<th>留言</th>
				<th>回复</th>
            </tr>
		</thead>
        <tbody>
        	<c:forEach items="${myLeaveMsg }" var="msg">
        	<tr>
            	<td>${msg.fromUser.user_name}</td>
                <td>${msg.time}</td>
                <td>${msg.content }</td>
                <td><button>回复</button></td>
            </tr>
            </c:forEach>
        </tbody>
	</table>
</div> 
</body>
</html>