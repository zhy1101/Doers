<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" href="common/css/main.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="common/css/personalProfile.css">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="common/css/cropper.min.css" rel="stylesheet">
<link href="common/css/sitelogo.css" rel="stylesheet">
</head>
<body>
<div class="datum-item-box border-bottom" id="essentialinformation" style="background-color:#FCFCFC">
    <div class="text-center name-datum-box ">
            	<div class="ibox-content user-avatars">
				<div class="row ">
					<div id="crop-avatar" class="col-md-6">
						<div class="avatar-view" title="点击图片修改头像">
							<img src="${user.personImg_path}" alt="Logo">
						</div>
					</div>
				</div>
			 </div>
			<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<form class="avatar-form" action="${pageContext.request.contextPath}/userAction_changePersonalPic" enctype="multipart/form-data" method="post">
							<div class="modal-header">
								<button class="close" data-dismiss="modal" type="button">&times;</button>
								<h4 class="modal-title" id="avatar-modal-label">修改头像</h4>
							</div>
							<div class="modal-body">
								<div class="avatar-body">
									<div class="avatar-upload">
										<input class="avatar-src" name="avatar_src" type="hidden">
										<input class="avatar-data" name="avatar_data" type="hidden">
										<label for="avatarInput">图片上传</label>
										<input class="avatar-input" id="avatarInput" name="avatar_file" type="file"></div>
									<div class="row">
										<div class="col-md-9">
											<div class="avatar-wrapper"></div>
										</div>
										<div class="col-md-3">
											<div class="avatar-preview preview-lg"></div>
											<div class="avatar-preview preview-md"></div>
											<div class="avatar-preview preview-sm"></div>
										</div>
									</div>
									<div class="row avatar-btns">
										<div class="col-md-9">
											<div class="btn-group">
												<button class="btn" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"><i class="fa fa-undo"></i> 向左旋转</button>
											</div>
											<div class="btn-group">
												<button class="btn" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"><i class="fa fa-repeat"></i> 向右旋转</button>
											</div>
										</div>
										<div class="col-md-3">
											<button class="btn btn-success btn-block avatar-save" type="submit"><i class="fa fa-save"></i> 保存修改</button>
										</div>
									</div>
								</div>
							</div>
			  		</form>
			  	</div>
			  </div>
			</div>
		<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
         <div class="hover center">
             <span class="text-center modify-user-name">${user.user_name }</span>
         </div>
	  </div>
        <h3>基本信息</h3>
	  <div class="datum-title-box">
        <input form="userinfo" value="保存文字信息" id="essential-information" class="btn-default-main btn-small right" type="submit" style="color:white;background-color:#37e3f7;width:90px">
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
<script type="text/javascript" src="common/js/jquery.min.js"></script>
<script src="common/js/cropper.min.js"></script>
<script src="common/js/sitelogo.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>