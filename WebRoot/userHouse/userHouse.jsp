<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<head>
    <title>个人中心</title>

        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

        <meta name="description" content="FlexyCodes - FlexyCard vCard Template. Creating my personal page!"/>
    	<script type="text/javascript" charset="utf-8" src="../utf8-jsp/ueditor.config.js"></script>
    	<script type="text/javascript" charset="utf-8" src="../utf8-jsp/ueditor.all.js"> </script>
   			 <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    		<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    	<script type="text/javascript" charset="utf-8" src="../utf8-jsp/lang/zh-cn/zh-cn.js"></script>
        <link  rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/animate.min.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css" />
        <link rel="stylesheet" type="text/css" href="css/colors/DarkBlue.css" id="colors-style" />
        <link rel="stylesheet" type="text/css" href="css/switcher.css" />
        <link rel="stylesheet" type="text/css" href="css/main.css" />
        <link rel="stylesheet" type="text/css" href="css/prettyPhoto.css"/> 
        <link href='http://fonts.useso.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" type="image/x-icon" href="userHouse/images/favicon/favicon.ico">


        <style>
            @media only screen and (max-width : 991px){
                .resp-vtabs .resp-tabs-container {
                    margin-left: 13px;
                }
            }
			
			@media only screen and (min-width : 800px) and (max-width : 991px){
                .resp-vtabs .resp-tabs-container {
                    margin-left: 13px;
					width:89%;
                }
            }		

        </style>

    </head>
<body>
       <nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="hiview.html">Doers</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li ><a href="/Doers/index.jsp">首页</a></li>
                    <li><a href="hiview.html">Do 博物</a></li>
                    <li><a href="hiview.html">Do 服务</a></li>
                    <li><a href="hiview.html">Do 活动</a></li>
                    <li><a href="hiview.html">Do 交易</a></li>
                    <li class="active"><a href="/Doers/userHouse/index.jsp">Do Myself</a></li>
                </ul>
		</div>
		</nav>

         <!-- Laoding page -->
        <div id="preloader"><div id="spinner"></div></div>
        <!-- .wrapper --> 
        <div class="wrapper" >
            <!--- .Content --> 
            <section class="tab-content" >
                <div class="container" style="margin-top:40px">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">   
                                <div class="col-md-3 widget-profil">
                                    <div class="row">

    <!-- Profile Image -->
    <div class="col-lg-12 col-md-12 col-sm-3 col-xs-12 ">                         
         <div class="image-holder one" id="pic_prof_1" style="display:block">
                <img class="head-image up circle" src="../img/user_image.png" width="150" height="150" alt="" />
        </div>
        
        <!-- style for simple image profile -->		
   		<div class="circle-img" id="pic_prof_2" style="display:none"></div>
       
    
    </div>
    <!-- End Profile Image -->
  
    <div class="col-lg-12 col-md-12 col-sm-9 col-xs-12">
    
    
        <!-- Profile info -->
        <div id="profile_info">
            <h1 id="name" class="transition-02">${user.user_name }</h1>
            <h4 class="line">${user.skill}</h4>
            <h6><span class="fa fa-map-marker"></span> ${user.address }</h6>
        </div>
        <!-- End Profile info -->  
    	
        
        <!-- Profile Description -->
        <div id="profile_desc">
            <p>
            	${user.description }
            </p>
        </div>
        <!-- End Profile Description -->   
    </div>
</div>                                
</div>
    <div class="col-md-9 flexy_content" style="padding-left: 0;padding-right: 0;">

  <!-- verticalTab menu -->
  <div id="verticalTab" style="margin-top:30px">

      <ul class="resp-tabs-list" >
          <li class="tabs-profile hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a profile" data-tab-name="profile" >			
              <span class="tite-list" >个人信息</span>
              <i class="fa fa-user icon_menu icon_menu_active"  ></i>
          </li>

          <li class="tabs-resume hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="resume"> 
              <span class="tite-list">我的展示</span>
              <i class="fa fa-tasks icon_menu"></i>
          </li>

          <li class="tabs-portfolio hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="portfolio"> 
              <span class="tite-list">我的交易</span>
              <i class="fa fa-briefcase icon_menu" ></i>
          </li>

          <li class="tabs-blog hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="blog">
              <span class="tite-list">我的发布</span>
              <i class="fa fa-bullhorn icon_menu" ></i>
          </li>

          <li class="tabs-contact hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="contact" style="margin-bottom: 48px !important;"> 
              <span class="tite-list">我的留言</span>
              <i class="fa fa-envelope icon_menu"></i> 
          </li>
      </ul>
      <!-- /resp-tabs-list -->



   <!-- resp-tabs-container --> 
<div class="resp-tabs-container">
<!-- ============================================================================ -->
<div id="profile" class="content_2">
<h1 class="h-bloc">关于我-个人信息</h1>

<form>
<div class="row top-p">
    <div class="col-md-6 profile-l">
        <!--About me-->
        <div class="title_content">
            <div class="text_content">${user.user_name }</div>
            <div class="clear"></div>
        </div>

		   <ul class="about">

            <li>
                <i class="glyphicon glyphicon-user"></i>
                <label>姓名</label>
                <span class="value">${user.user_name }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-calendar"></i>
                <label >出生日期</label>
                <span class="value">${user.birthday }</span>
                <div class="clear"></div>
            </li>

            <li> 
                <i class="glyphicon glyphicon-map-marker"></i>
                <label>地址</label>
                <span class="value">${user.address }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-envelope"></i>
                <label>Email</label>
                <span class="value">${user.email }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-phone"></i>
                <label>微信号</label>
                <span class="value">${user.weiChat }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-star"></i>
                <label>QQ</label>
                <span class="value">${user.QQ }</span>
                <div class="clear"></div>
            </li>
            <li>
                <i class="glyphicon glyphicon-tags"></i>
                <label>技能领域</label>
                <span class="value">${user.skill }</span>
                <div class="clear"></div>
            </li>

        </ul>

    </div>
    <!-- End left-wrap -->

    <div class="col-md-6 profile-r">
    	<h3>个人描述</h3>
        <p style="margin-bottom:20px">
            <i class="fa fa-quote-left"></i>       
            ${user.description }
        </p>
        
   </div>
</form>
</div>
</div>
                                           
<!-- ============================================================================ -->
 

<!-- ============================================================================ -->
<div id="portfolio" class="content_2">
  <h1 class="h-bloc">实战 - 我的交易</h1>




</div>
<!-- ============================================================================ -->            
<div id="blog" class="content_2">
<h1 class="h-bloc">继续 - 发布新作</h1><br> 
    <form action="/Doers/ueditorAction_addNewProduction" method="post" enctype="multipart/form-data" id="newProduct">
    	<input name="user" type="hidden" value="${user}">
              标题：<input name="productionTitle" type="text" style="width:300px">
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
	<br>
	   封面：<input name="cover" type="file" name="cover">
	<br>
	简介（100字内）：<textarea name="shortcontent" form="newProduct" rows="2" cols="50" maxlength="100" style="resize:none"></textarea>
    <br><br>
    <input name="content" type="hidden" id="input_content"/>
    <script id="editor" type="text/plain" style="width:700px;height:300px;" >
	</script>
    <Button type="submit" style="margin-left:340px;margin-top:30px" onclick="checkProductionForm()">提交</Button> 
    <script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor',{toolbars: [[
        'fullscreen', 'source', '|',
        'undo', 'redo', '|',
        'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|',
        'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', '|',
        'lineheight', '|',
        'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
        'indent', '|',
        'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|',
        'link', 'unlink', 'anchor', '|', 
        'imagenone', 'imageleft', 'imageright', 'imagecenter', '|',
        'simpleupload', 'insertimage', 'emotion', 'insertvideo', 'music', 'attachment',  'insertcode', 'background', '|',
        'horizontal', 'spechars', 'snapscreen', 'wordimage', '|',
        'preview', 'help'
    ]]});  
    function checkProductionForm(){
    	document.getElementById("input_content").value =  UE.getEditor('editor').getContent();	
    }
	</script>    
    </form>
	</div>
     
</div>

 <div id="contact" class="content_2">
      <h1 class="h-bloc">交流 - 我的留言</h1>
				<div class="row">
                     <div class="col-lg-12">
                          <div class="row" id="contact-user">
                             <div class="col-md-5">
            						<div class="clear"></div>
        					 </div>
            			 </div>
       			 </div>
 		 </div>  
	 </div>                                           
														</div>
													</div><!-- End verticalTab -->
												</div>
											</div>
										</div>
									</div><!-- End flexy_content -->
								</div><!-- End container -->
						</section><!-- End Content -->
					</div> <!-- End wrapper -->

        <!-- Switcher -->
        <div id="custumize-style" style="margin-top:40px">
            <h2>样式选择<a href="#" class="switcher"><i class="fa fa-cogs icon-switcher"></i></a></h2>
            <div>
                <h3>主题颜色</h3>
                <ul class="colors-style" id="color1">

                    <li><a href="#" class="gray"></a></li>
                    <li><a href="#" class="green"></a></li>
                    <li><a href="#" class="blue"></a></li>
                    <li><a href="#" class="red"></a></li>
                    <li><a href="#" class="yellow"></a></li>

                    <li><a href="#" class="DarkBlue"></a></li>
                    <li><a href="#" class="orange"></a></li>
                    <li><a href="#" class="rose"></a></li>
                    <li><a href="#" class="lightseagreen"></a></li>

                </ul>
            </div>
            <div><h3 class="layouts"></h3>
           <div id="show">  </div>
			 <h3 class="layouts">页面显示动画</h3>
                <div id="show">

                    <select name="one" class="dropdown-select">
                        <optgroup label="弹出动画">
                            <option value="bounceIn" selected>从内弹出</option>
                            <option value="bounceInDown">向下弹出</option>
                            <option value="bounceInLeft">向左弹出</option>
                            <option value="bounceInRight">向右弹出</option>
                            <option value="bounceInUp">向上弹出</option>
                        </optgroup>

                        <optgroup label="渐变动画">
                            <option value="fadeIn">向内溶解</option>
                            <option value="fadeInDown">向下淡出</option>
                            <option value="fadeInLeft">向左淡出</option>
                            <option value="fadeInRight">向右淡出</option>
                            <option value="fadeInUp">向上淡出</option>
                        </optgroup>      
                    </select>

                </div>

                <h3 class="layouts" style="padding-top:5px">背景风格</h3>
                <div id="show">

                    <div class="clean-check">

						<input type="radio" id="s1" name="layout" value="bg_color" checked="checked" />
                        <label for="s1"><span></span>静态</label>
                        
                        <input type="radio" id="s2" name="layout" value="bg_slider" />
                        <label for="s2"><span></span>动态</label>

                    </div>

                </div>

            </div>

            <div> 
                <h3>背景颜色</h3>
                <ul class="colors-style bgsolid" id="bgsolid">
                    <li><a href="#" class="gray-bg"></a></li>
                    <li><a href="#" class="green-bg"></a></li>
                    <li><a href="#" class="blue-bg"></a></li>
                    <li><a href="#" class="red-bg"></a></li>
                    <li><a href="#" class="yellow-bg"></a></li>
                </ul>
            </div> 

            <div>  
                <h3>背景图片</h3>
                <ul class="colors-style bg" id="bg">
                    <li><a href="#" class="bg1"></a></li>
                    <li><a href="#" class="bg2"></a></li>
                    <li><a href="#" class="bg3"></a></li>
                    <li><a href="#" class="bg4"></a></li>
                    <li><a href="#" class="bg5"></a></li>
                </ul>
            </div>

            <div id="button-reset"><a href="#" class="button color blue boxed">重置</a></div>
        </div>
        <!-- End Switcher -->


        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script> 
        <script type="text/javascript" src="js/jquery.cycle2.min.js"></script>
        <script type="text/javascript" src="js/jquery.mixitup.min.js"></script> 
        <script type="text/javascript" src="js/HeadImage.js"></script>
        <script type="text/javascript" src="js/easyResponsiveTabs.min.js"></script> 
        <script type="text/javascript" src="js/jsSwitcher/jquery.cookie.js"></script>	
        <script type="text/javascript" src="js/jsSwitcher/switcher.js"></script>	
        <script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>		
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/gmaps.min.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <script type="text/javascript">

            var mouseX;
            var mouseY;
            var imageOne;

            /* Calling the initialization function */
            $(init);

            /* The images need to re-initialize on load and on resize, or else the areas
             * where each image is displayed will be wrong. */
            $(window).load(init);
            $(window).resize(init);

            /* Setting the mousemove event caller */
            $(window).mousemove(getMousePosition);

            /* This function is called on document ready, on load and on resize
             * and initiallizes all the images */
            function init() {

                /* Instanciate the mouse position variables */
                mouseX = 0;
                mouseY = 0;

                /* Instanciate a HeadImage class for every image */
                imageOne = new HeadImage("one");

            }

            /* This function is called on mouse move and gets the mouse position. 
             * It also calls the HeadImage function to display the correct image*/
            function getMousePosition(event) {

                /* Setting the mouse position variables */
                mouseX = event.pageX;
                mouseY = event.pageY;

                /*Calling the setImageDirection function of the HeadImage class
                 * to display the correct image*/
                imageOne.setImageDirection();

            }

        </script>
        <script language=javascript>
	function changePage(pageNum){
			//1 将页码的值放入对应表单隐藏域中
				$("#currentPageInput").val(pageNum);
			//2 提交表单
				$("#pageForm").submit();
	};
	
	function changePageSize(pageSize){
			//1 将页码的值放入对应表单隐藏域中
			$("#pageSizeInput").val(pageSize);
			//2 提交表单
			$("#pageForm").submit();
	};
</script>

    </body>
</html>