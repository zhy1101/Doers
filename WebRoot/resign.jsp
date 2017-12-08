<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>注册</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/resign_gloab.css" rel="stylesheet">
<link href="css/resign.css" rel="stylesheet">
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/register.js"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
</head>
<body class="bgf4" >
<div class="login-box f-mt10 f-pb50">
	<div class="main bgf">    
    	<div class="reg-box-pan display-inline">  
        	<div class="step">        	
                <ul>
                    <li class="col-xs-4 on">
                        <span class="num"><em class="f-r5"></em><i>1</i></span>                	
                        <span class="line_bg lbg-r"></span>
                        <p class="lbg-txt">填写账户信息</p>
                    </li>
                    <li class="col-xs-4">
                        <span class="num"><em class="f-r5"></em><i>2</i></span>
                        <span class="line_bg lbg-l"></span>
                        <span class="line_bg lbg-r"></span>
                        <p class="lbg-txt">激活账户信息</p>
                    </li>
                    <li class="col-xs-4">
                        <span class="num"><em class="f-r5"></em><i>3</i></span>
                        <span class="line_bg lbg-l"></span>
                        <p class="lbg-txt">注册成功</p>
                    </li>
                </ul>
            </div>
        	<div class="reg-box" id="verifyCheck" style="margin-top:20px;">
        		<form name="Form1" action="${pageContext.request.contextPath}/resignAction_resign" method="post" id ="Form1">
            	<div class="part1">                	
                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>用户名：</span>    
                        <div class="f-fl item-ifo">
                            <input type="text" name="u.user_name" maxlength="20" class="txt03 f-r3 required" tabindex="1" data-valid="isNonEmpty||between:3-20||isUname" data-error="用户名不能为空||用户名长度3-20位||只能输入中文、字母、数字、下划线，且以中文或字母开头" id="user_name" /> <span class="ie8 icon-close close hide"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus"><span>3-20位，中文、字母、数字、下划线的组合，以中文或字母开头</span></label>
                            <label class="focus valid"></label>
                        </div>
                    </div>
                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>Email：</span>    
                        <div class="f-fl item-ifo">
                            <input type="text" class="txt03 f-r3 required"  tabindex="2" data-valid="isNonEmpty||isEmail" data-error="邮箱不能为空||邮箱格式不正确"  id="email" name="u.email"/> 
                            <span class="ie8 icon-close close hide"></span>                           
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus">请填写有效的邮箱地址</label>
                            <label class="focus valid"></label>
                        </div>
                    </div>
                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>密码：</span>    
                        <div class="f-fl item-ifo">
                            <input type="password" name="u.password" id="password" maxlength="20" class="txt03 f-r3 required" tabindex="3" style="ime-mode:disabled;" onpaste="return  false" autocomplete="off" data-valid="isNonEmpty||between:6-20||level:2" data-error="密码不能为空||密码长度6-20位||该密码太简单，有被盗风险，建议字母+数字的组合" /> 
                            <span class="ie8 icon-close close hide" style="right:55px"></span>
                            <span class="showpwd" data-eye="password"></span>                        
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus">6-20位英文（区分大小写）、数字、字符的组合</label>
                            <label class="focus valid"></label>
                            <span class="clearfix"></span>
                            <label class="strength">
                            	<span class="f-fl f-size12">安全程度：</span>
                            	<b><i>弱</i><i>中</i><i>强</i></b>
                            </label>    
                        </div>
                    </div>
                    <div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>确认密码：</span>    
                        <div class="f-fl item-ifo">
                            <input type="password" maxlength="20" class="txt03 f-r3 required" tabindex="4" style="ime-mode:disabled;" onpaste="return  false" autocomplete="off" data-valid="isNonEmpty||between:6-16||isRepeat:password" data-error="密码不能为空||密码长度6-16位||两次密码输入不一致" id="rePassword" />
                            <span class="ie8 icon-close close hide" style="right:55px"></span>
                            <span class="showpwd" data-eye="rePassword"></span>
                            <label class="icon-sucessfill blank hide"></label>
                            <label class="focus">请再输入一遍上面的密码</label> 
                            <label class="focus valid"></label>                          
                        </div>
                    </div>
  						<div class="item col-xs-12">
                        <span class="intelligent-label f-fl"><b class="ftx04">*</b>用户类型：</span>    
                        <div class="f-fl item-ifo">
                            <select name ="u.kind" id ="user_kind" onchange="change_num(this.value)">
							    <option value="3"></option>
							    <option value="1">学生</option>
							    <option value="2">教师</option>	
							    <option value="3">普通用户</option>			    	
		    					</select>
                        </div>
                   		 </div> 
                <script>
                   		function change_num(val){
                   			var Ele = document.getElementById("real_id_name");				
                   			if(val==1){
                   				Ele.innerText="学号：";
                   			}else if(val==2){
                   				Ele.innerText="教工号：";
                   			}else{
                   				Ele.innerText="身份证号：";
                   			}
                   			}
                </script>
                   		<div class="item col-xs-12">
	                   	<span class="intelligent-label f-fl" id="real_id_name" >身份证号：</span>  
                        <div class="f-fl item-ifo"  >
						<input type="text" name="u.real_id" style="width:200px" class="txt03 f-r3 f-fl required" data-valid="isNonEmpty" data-error="号码不能为空"/>
						<span class="ie8 icon-close close hide"></span>
						<label class="focus valid"></label>
						</div>
						</div>

                    <div class="item col-xs-12">
                       <span class="intelligent-label f-fl"><b class="ftx04">*</b>验证码：</span>    
                        <div class="f-fl item-ifo">
                            <input type="text" id="checkcode" name="checkcode" class="text captcha"  maxlength="4" autocomplete="off"> 
                            <span class="ie8 icon-close close hide"></span>
                            <label class="f-size12 c-999 f-fl f-pl10">
                            	<img src="${pageContext.request.contextPath}/checkImg.action" id="validate_code"/>  
                            	 <span style="color:red">${info }</span>                              
                            </label>                        
                            <label class="icon-sucessfill blank hide" style="left:380px"></label>
                            <label class="focusa">看不清？<a href="javascript:;" onclick="reload()" class="c-blue">换一张</a></label>   
                            <label class="focus valid" style="left:370px"></label>                        
                        </div>
                    </div>
                    <div class="item col-xs-12" style="margin-top:20px">
                        <span class="intelligent-label f-fl">&nbsp;</span>    
                        <div class="f-fl item-ifo">
                           <input href="javascript:;" class="btn btn-blue f-r3" id="btn_part1" type="submit" value="注册"></input>                                   
                        </div>
                    </div> 
                    </form>   
                </div>
                
<script type="text/javascript">
var xmlHttp;  
//异步刷新验证码  
function reload() {  
    //针对不同浏览器，不同的方式生成xmlHttp对象  
    try{  
        xmlHttp=new XMLHttpRequest();  
    }catch(e){  
        try{  
            xmlHttp=new ActiveXObject("Msxml2.XMLHttp");  
        }catch(e){  
            try{  
                xmlHttp=new ActiveXObject("Microsoft.XMLHttp");  
            }catch(e){  
                alert("你的浏览器不支持AJAX")   ;  
                return false;  
            }  
        }  
    }  
    var url="${pageContext.request.contextPath}/checkImg.action";  
    xmlHttp.onreadystatechange = deal;//该属性为一个函数  
    xmlHttp.open("GET", url, true);//初始化xmlHttp  
    xmlHttp.send(null);//发送  
}  
function deal(){  
    if(xmlHttp.readyState==4){//当状态值为4时，接收到服务器传输的信息  
        //重新从servlet获得图片资源，并且防止浏览器缓存，加了时间  
        document.getElementById("validate_code").src = "${pageContext.request.contextPath}/checkImg.action?" + new Date().getTime();  
    }  
}  
</script>
</body>
</html>
