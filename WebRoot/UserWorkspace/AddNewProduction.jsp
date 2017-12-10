<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<script type="text/javascript" src="../../Doers/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../Doers/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../Doers/utf8-jsp/ueditor.all.js"> </script>
<script type="text/javascript" charset="utf-8" src="../../Doers/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<h3 class="h-bloc">发布新作</h3><br> 
    <form action="/Doers/ueditorAction_addNewProduction" method="post" enctype="multipart/form-data" id="newProduct">
    	<input name="user" type="hidden" value="${user}">
              标题：<input name="productionTitle" type="text" style="width:300px">&nbsp;&nbsp;
              类别：<select name="big_kind" onchange="changebig_kind(this.value)" >
          <option value="0">--请选择--</option>
          <option value="1">计算机/编码</option>
		  <option value="2">文字编写</option>
		  <option value="3">图像模板</option>
		  <option value="4">创意影音</option>
		  <option value="5">其他</option>    
         </select>
    <script type="text/javascript">
		 var type = new Array(5);
		 type[0] = new Array("html/css","js","java","C/C++","算法","jsp","php","Python","Android",
				               "BootStrap","iOS","Unity 3D","特效动画","网站建设","其他");
		 type[1] = new Array("获奖案例","活动策划","广告语/宣传语","推送文字","专业分析文本","个人创作","其他");
		 type[2] = new Array("PS","PPT模板","简历模板","个性街拍","实景拍摄","CAD","设计构图","APP样式","图标设计","网页构图","其他");
		 type[3] = new Array("个人原声","乐器佳音","实拍视频","合成视频","其他");
		 type[4] = new Array("个人翻译","手工DIY","私房美食","其他");
		 function changebig_kind(val){
				//获取第二个下拉列表
				var dayEle = document.getElementById("small_kind");
				//清空第二个下拉列表的option内容
				dayEle.options.length=0;				
				//2.遍历二维数组中的月份
				for(var i=0;i<type.length;i++){
					//注意，比较的是角标
					if(val==i+1){
						//3.遍历用户选择
						for(var j=0;j<type[i].length;j++){
							//4.创建文本节点
							var textNode = document.createTextNode(type[i][j]);
							//5.创建option元素节点
							var opEle = document.createElement("option");
							opEle.value= j+1;
							//6.将文本节点添加到option元素节点
							opEle.appendChild(textNode);
							//8.将option元素节点添加到第二个下拉列表中去
							dayEle.appendChild(opEle);
						}
					}
				}
			} 
	</script>
	<select name ="small_kind" id ="small_kind">
	<option value="">--请选择--</option>
	</select>
	   &nbsp;&nbsp;封面：<input name="cover" type="file" name="cover">
	<br>
	简介（100字内）：<br>
	<textarea name="shortcontent" form="newProduct" rows="2" cols="50" maxlength="100" style="resize:none"></textarea>
    <br><br>
    <input name="content" type="hidden" id="input_content"/>
    <script id="editor" type="text/plain"></script>
    <Button type="submit" style="margin-left:340px;margin-top:30px" onclick="checkProductionForm()">提交</Button> 
    <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor',{
        initialFrameWidth : 1000,
        initialFrameHeight: 500
    });  
    function checkProductionForm(){
    	document.getElementById("input_content").value =UE.getEditor('editor').getContent();	
    }
	</script>    
    </form>

</body>
</html>