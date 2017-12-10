<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" href="common/css/main.css">
<link rel="stylesheet" href="common/css/style.css">
<link rel="stylesheet" href="common/css/personalProfile.css">
</head>
<body>
<div class="datum-item-box border-bottom" id="essentialinformation" style="background-color:#FCFCFC">
    <div class="text-center name-datum-box" style="margin-top:20px">
        <div class="user-avatars" id="form-data-cover" >
            <div class="opacity-layer hide">修改头像</div>
            <img src="../img/user_image.png" alt="" width="120" height="120">     
        </div>
         <div class="hover center">
             <span class="text-center modify-user-name">${user.user_name }</span>
         </div>
	  </div>
        <h3>基本信息</h3>
	  <div class="datum-title-box">
        <input form="userinfo" value="保存" id="essential-information" class="btn-default-main btn-small right" type="submit" style="color:white;background-color:#37e3f7;">
                        </div>
                        <div class="table-wrap">
                <form action="${pageContext.request.contextPath}/userAction_save" method="post" id="userinfo">
                            <table class="datum-table" cellspacing="0">
                                <tbody>
                                <tr>
                                    <th class="padding-top-30">邮箱</th>
                                    <td class="padding-top-30" >${user.email }</td>
                                </tr>
                                <tr>
                                    <th>地址</th>
                                    <td>
                                        <div class="short-text-box">
                                             <textarea id="address" class="text-style textarea-style"  style="height: 42px; padding-right: 60px;" name="Caddress">${user.address }</textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>出生日期</th>
                                    <td>
                                      <div class="short-text-box">
                                            <textarea id="birth" class="text-style textarea-style" style="height: 42px; padding-right: 60px;" name="Cbirthday">${user.birthday }</textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>微信</th>
                                    <td>
                                      <div class="short-text-box">
                                            <textarea id="weiChat" class="text-style textarea-style" style="height: 42px; padding-right: 60px;" name="CweiChat">${user.weiChat }</textarea>
                                        </div>
                                    </td>
                                </tr>
           						 <tr>
                                    <th>QQ</th>
                                    <td>
                                      <div class="short-text-box">
                                            <textarea id="QQ" class="text-style textarea-style" onpropertychange="MaxMe(this)" oninput="MaxMe(this)" style="height: 42px; padding-right: 60px;" name="CQQ">${user.QQ }</textarea>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="padding-top-30">注册时间</th>
                                    <td class="padding-top-30">${user.time }</td>
                                </tr>
                                <tr>
                                    <th class="padding-top-30">主要邻域</th>
                                    <td class="padding-top-30">
                                        <div class="long-text-box">
                                            <input id="signature" placeholder="不超过20个汉字或40个字符" class="text-style" style="padding-right: 40px;" type="text" name="Cskill" value="${user.skill }"><span class="count">40</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="brief-introduction" valign="top">个人描述</th>
                                    <td class="padding-top-30">
                                        <div class="long-text-box">
                                            <textarea id="brief-introduction" class="text-style textarea-style" onpropertychange="MaxMe(this)" oninput="MaxMe(this)" style="height: 42px; padding-right: 60px;" name="Cdescription">${user.description }</textarea><span class="count">200</span>
                                        </div>
                                    </td>
                                </tr>
                                </tbody></table>
                                </form>
                        </div>
                    </div>
<script type="text/javascript" src="common/js/main.js"></script>
<script type="text/javascript" src="common/js/jquery.js"></script>
</body>
</html>