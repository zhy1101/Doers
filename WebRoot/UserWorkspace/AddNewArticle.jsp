<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>分享文章</title>
<script type="text/javascript" src="../../DoersInLocal/js/jquery-1.10.2.min.js"></script>
<script src="../../DoersInLocal/js/my.js" type="text/javascript"></script>   
<script type="text/javascript" charset="utf-8" src="../../DoersInLocal/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../../DoersInLocal/utf8-jsp/ueditor.all.js"> </script>
<script type="text/javascript" charset="utf-8" src="../../DoersInLocal/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<link rel="shortcut icon" href="../../DoersInLocal/favicon.ico" />
</head>
<body>
<h3 class="h-bloc">分享文章</h3>
<h6 class="h-bloc" style="color:#B0C4DE"> "Do家族 感谢你每一次无偿的技能知识共享     共同付出收获快乐"</h6>
    <form action="/DoersInLocal/addArticleAction_addNewArticle" method="post" enctype="multipart/form-data" id="newProduct">
              标题：<input name="articleTitle" type="text" >&nbsp;&nbsp;
             关键词：<input name="word1" placeholder="关键词1">&nbsp;<input name="word2" placeholder="关键词2">&nbsp;<input name="word3" placeholder="关键词3">
    <br>封面选择：<input name="cover" type="file" name="cover">
	<br>
    <input name="content" type="hidden" id="input_content" style="margin-top:30px" />
    <script id="editor" type="text/plain"></script>
    <Button type="submit" style="margin-left:340px;margin-top:30px" onclick="checkProductionForm()">提交</Button> 
    <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor',{
        initialFrameWidth : 1000,
        initialFrameHeight: 500,
        toolbars: [[
           'source', '|',
            'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript','|',
            'forecolor', 'backcolor', 'lineheight', '|',
            'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
            'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
            'simpleupload', 'emotion', '|',
            'horizontal', 'date', 'time', 'spechars',  '|',
            'preview'
        ]]
    });  
    function checkProductionForm(){
    	document.getElementById("input_content").value =UE.getEditor('editor').getContent();	
    }
	</script>    
    </form>

</body>
</html>