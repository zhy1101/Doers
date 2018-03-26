<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>新建作品</title>
<link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />
<script type="text/javascript" src="../../DoersInLocal/js/jquery-1.10.2.min.js"></script>
<script src="../../DoersInLocal/js/my.js" type="text/javascript"></script>   
<script type="text/javascript" charset="utf-8" src="../../DoersInLocal/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../DoersInLocal/utf8-jsp/ueditor.all.js"> </script>
<script type="text/javascript" charset="utf-8" src="../../DoersInLocal/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			loadSelect("002","big_kind","big_kind.dict_id");
			var list=document.getElementById("small_kind");
			$("#big_kind>select").change(
			function(){
			if($("#big_kind>select").val()==4){
				if(list.children.length>0){list.removeChild(list.childNodes[0]);}
			    loadSelect("003","small_kind","small_kind.dict_id");
			    }else if($("#big_kind>select").val()==5){
			    if(list.children.length>0){list.removeChild(list.childNodes[0]);}
			    loadSelect("004","small_kind","small_kind.dict_id");
			    }else if($("#big_kind>select").val()==6){
			   if(list.children.length>0){list.removeChild(list.childNodes[0]);}
			    loadSelect("005","small_kind","small_kind.dict_id");
			    }else if($("#big_kind>select").val()==7){
			   if(list.children.length>0){list.removeChild(list.childNodes[0]);}
			    loadSelect("006","small_kind","small_kind.dict_id");
			    }else if($("#big_kind>select").val()==8){
			   if(list.children.length>0){list.removeChild(list.childNodes[0]);}
			    loadSelect("007","small_kind","small_kind.dict_id");
			    }
			}
		)
			});
</script>
</head>
<body>
<h3 class="h-bloc">发布新作</h3><br> 
    <form action="/DoersInLocal/ueditorAction_addNewProduction" method="post" enctype="multipart/form-data" id="newProduct">
              标题：<input name="productionTitle" type="text" style="width:300px">&nbsp;&nbsp;
              类别：<span class="f-fl item-ifo" id="big_kind"></span> 
	     <span class="f-fl item-ifo" id="small_kind"></span>
	   &nbsp;&nbsp;封面：<input name="cover" type="file" >
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