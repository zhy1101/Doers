<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  		<title>${doer.user_name }的个人空间</title>

        <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

        <meta name="description" content="FlexyCodes - FlexyCard vCard Template. Creating my personal page!"/>
		<link rel="shortcut icon" href="../../Doers/favicon.ico" />
        <!-- CSS | bootstrap -->
        <!-- Credits: http://getbootstrap.com/ -->
        <link  rel="stylesheet" type="text/css" href="../../Doers/bootstrap/css/bootstrap.min.css" />

        <!-- CSS | font-awesome -->
        <!-- Credits: http://fortawesome.github.io/Font-Awesome/icons/ -->
        <link rel="stylesheet" type="text/css" href="../../Doers/css/font-awesome.min.css" />

        <!-- CSS | Colors -->
        <link rel="stylesheet" type="text/css" href="../../Doers/css/DarkBlue.css" id="colors-style" />
        <link rel="stylesheet" type="text/css" href="../../Doers/css/switcher.css" />

        <!-- CSS | animate -->
        <!-- Credits: http://daneden.github.io/animate.css/ -->
        <link rel="stylesheet" type="text/css" href="../../Doers/css/animate.min.css" />

        <!-- CSS | Normalize -->
        <!-- Credits: http://manos.malihu.gr/jquery-custom-content-scroller -->
        <link rel="stylesheet" type="text/css" href="../../Doers/css/jquery.mCustomScrollbar.css" />

        <!-- CSS | Google Fonts -->
        <link href='http://fonts.useso.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>

        <!-- CSS | Style -->
        <!-- Credits: http://themeforest.net/user/FlexyCodes -->
        <link rel="stylesheet" type="text/css" href="../../Doers/PersonalSpace/css/main.css" />

        <!-- CSS | prettyPhoto -->
        <!-- Credits: http://www.no-margin-for-errors.com/ -->
        <link rel="stylesheet" type="text/css" href="../../Doers/css/prettyPhoto.css"/>

        <style>
            @media only screen and (max-width : 991px){
                .resp-vtabs .resp-tabs-container {
                    margin-left: 0px !important;
                }
                .resp-vtabs ul.resp-tabs-list {
                    width: 10%;
                    margin-right: 2px !important;
                }
            }

            @media only screen and (max-width : 800px){

                .widget-profil {
                    float: none !important;
                }
            }

            .widget-profil {
                float: left;
            }

            .resp-vtabs ul.resp-tabs-list {
                float: right;
            }
        </style>

    </head>

    <body>

        <!-- Laoding page -->
        <div id="preloader"><div id="spinner"></div></div>

        <!-- .wrapper --> 
        <div class="wrapper">

            <!--- .Content --> 
            <section class="tab-content">
                <div class="container">

                    <div class="row">

                        <div class="col-md-12">

                            <div class="row">   

                                <div class="col-md-3 widget-profil">

                                    <div class="row">

    <!-- Profile Image -->
    <div class="col-lg-12 col-md-12 col-sm-3 col-xs-12 ">
	
         <div class="image-holder one" id="pic_prof_1" style="display:block">        
                <img class="head-image up circle" src="${doer.personImg_path }" width="150" height="150" alt="" />
        </div>
        
        <!-- style for simple image profile -->		
   		<div class="circle-img" id="pic_prof_2" style="display:none"></div>
    
    </div>
    <!-- End Profile Image -->
  
    <div class="col-lg-12 col-md-12 col-sm-9 col-xs-12">
    
    
        <!-- Profile info -->
        <div id="profile_info">
            <h1 id="name" class="transition-02">${doer.user_name }</h1>
            <h4 class="line">${doer.skill }</h4>
            <h6><span class="fa fa-map-marker"></span>${doer.address}</h6>
        </div>
        <!-- End Profile info -->  
    	
        
        <!-- Profile Description -->
        <div id="profile_desc">
            <p>${doer.description }</p>
        </div>
        <!-- End Profile Description -->        
    </div>
</div>
      </div>

                                <div class="col-md-9 flexy_content" style="padding-left: 0;padding-right: 0;">

                                    <!-- verticalTab menu -->
                                    <div id="verticalTab">

                                        <ul class="resp-tabs-list">
                                            <li class="tabs-profile hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a profile" data-tab-name="profile">			
                                                <span class="tite-list">profile</span>
                                                <i class="fa fa-user icon_menu icon_menu_active"></i>
                                            </li>

                                            <li class="tabs-resume hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="resume"> 
                                                <span class="tite-list">resume</span>
                                                <i class="fa fa-tasks icon_menu"></i>
                                            </li>

                                            <li class="tabs-portfolio hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="portfolio"> 
                                                <span class="tite-list">portfolio</span>
                                                <i class="fa fa-briefcase icon_menu"></i>
                                            </li>

                                            <li class="tabs-blog hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="blog">
                                                <span class="tite-list">blog</span>
                                                <i class="fa fa-bullhorn icon_menu"></i>
                                            </li>

                                            <li class="tabs-contact hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a" data-tab-name="contact" style="margin-bottom: 48px !important;"> 
                                                <span class="tite-list">contact</span>
                                                <i class="fa fa-envelope icon_menu"></i> 
                                            </li>

                                        </ul>
                                        <!-- /resp-tabs-list -->



                                        <!-- resp-tabs-container 中间部分开始--> 
                                        <div class="resp-tabs-container">

                                            <!-- profile -->
                                            <div id="profile" class="content_2">
                                                <!-- .title -->
<h1 class="h-bloc">简介 - 关于我</h1>

<div class="row top-p">
    <div class="col-md-8">
 		
        <!--About me-->
        <div class="title_content">
            <div class="text_content">${doer.user_name }</div>
            <div class="clear"></div>
        </div>
	
		   <ul class="about">

            <li>
                <i class="glyphicon glyphicon-user"></i>
                <label>用户名</label>
                <span class="value">${doer.user_name }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-calendar"></i>
                <label>生日</label>
                <span class="value">${doer.birthday}</span>
                <div class="clear"></div>
            </li>

            <li> 
                <i class="glyphicon glyphicon-map-marker"></i>
                <label>地址</label>
                <span class="value">${doer.address}</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-envelope"></i>
                <label>Email</label>
                <span class="value">${doer.email }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-phone"></i>
                <label>微信号</label>
                <span class="value">${doer.weiChat }</span>
                <div class="clear"></div>
            </li>

            <li>
                <i class="glyphicon glyphicon-star"></i>
                <label>QQ</label>
                <span class="value">${doer.QQ }</span>
                <div class="clear"></div>
            </li>

        </ul>


        <p style="margin-bottom:20px;display:inline">
            <i class="fa fa-quote-left"></i>       
           ${doer.description }
        </p>
        
    </div>
    <!-- End left-wrap -->

</div>
    <div class="row">
    <div class="col-md-12"></div>

  </div>
    <div class="clear"></div>
                                            </div>
                                            <!-- End .profile -->

                                            <!-- .resume -->
                                            <div id="resume" class="content_2">
                                                <!-- .title -->
<h1 class="h-bloc">实践 - 我的服务</h1> 

<div class="row"></div>

  <div style="clear: both"></div>  
<!-- client reference -->
<div class="row">
    <div class="col-md-12">   
    
<div class="reference clearfix"> 
            
        <ul>
        <c:forEach items="${doer.servers }" var="ser">
            <li class="clearfix">
                <img src="${ser.serverCover }" class="img_reference" width="100" height="100" alt="">
                <p>${ser.serverDescribtion }</p>
                <a href="${pageContext.request.contextPath}/serverDetailAction_showServerDetail?serverId=${ser.serverId}" target="_blank"><span>${ser.serverName }</span></a>
            </li>
        </c:forEach>
        </ul>
</div>
 </div>
       
     <div style="clear: both"></div>   
</div>

                                            </div>
                                            <!-- End .resume -->

                                            <!-- .portfolio -->
                                            <div id="portfolio" class="content_2">
                                                
                                                <!-- .title -->
                                                <h1 class="h-bloc">创作 - 我的作品</h1>

                                                <!-- .container-portfolio -->
                                                <div class="container-portfolio">                                    
                                                    <!-- #portfoliolist -->
                                                    <div id="portfoliolist">
                                                    <!-- .portfolio -->
                                                    <c:forEach items="${doer.productions }" var="mpro">
                                                        <div class="portfolio catWeb" data-cat="catWeb">	
                                                            <!-- .portfolio-wrapper -->
                                                            <div class="portfolio-wrapper">		
                                                                <a href="${pageContext.request.contextPath}/productionDetailAction_showProductionDetail?productionId=${mpro.productionId}" target="_blank">
                                                                    <img src="${mpro.coverURL }" class="img1"/>
                                                                    <div class="label">
                                                                        <div class="label-text">
                                                                            <a class="text-title">${mpro.productionTitle }</a>
                                                                            <span class="text-category">${mpro.time }</span>
                                                                        </div>
                                                                        <div class="label-bg"></div>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                            <!-- /.portfolio-wrapper -->
                                                        </div>
                                                        </c:forEach>		
                                                        <!-- /.portfolio --> 
                                                        <div class="clear"></div>
                                                    </div>
                                                    <!-- #portfoliolist -->
                                                </div>
                                                <!-- /.container-portfolio -->
                                                                                       </div>
                                            <!-- End .portfolio -->

                                            <!-- .blog -->
                                            <div id="blog" class="content_2">
                                                <h1 class="h-bloc">探讨 - 我的文章</h1><br> 

<div class="col-md-12">
    <div class="row">

        <!-- Page Blog -->
        <div class="col-md-12" id="blog_page">
            <!-- start Page Blog -->
            <section id="blog-page">
		<<c:forEach items="${doer.myArticles }" var="article">
        <!-- Post 2 -->
        <article id="post-2" class="blog-article">                    
            <div class="col-md-12">
                  <div class="row">
                       <div class="col-md-12 post_media">
                            <div class="post-format-icon">
                                <span class="fa fa-pencil"></span>
                            </div>
                        </div>
                   </div>

                   <div class="row">
                        <div class="col-md-12 post_content">
                             <div class="content post_format_standart">
                                 <div class="top_c ">

                                   <div class="title_content">
                                      <div class="text_content"><a href="${pageContext.request.contextPath}/productionDetailAction_showArticleDetail?articleId=${article.articleId}" class="read_more" target="_Blank">${article.articleTitle }</a></div>
                                            <div class="clear"></div>
                                        </div>

                                        <ul class="info">
                                            <li><i class="glyphicon glyphicon-comment"></i> ${article.push } 人赞过</li>
                                            <li><i class="glyphicon glyphicon-time"></i> ${article.time }</li>
                                            <li><i class="glyphicon glyphicon-tag"></i> ${article.word1 }&nbsp;${article.word2 }&nbsp;${article.word3 }</li>
                                        </ul>

                                        <div class="blog-content" style="width:300px;height:150px;overflow:hidden;white-space:nowrap;">
                                            <p>${article.content }</p></div>
                                    </div>
                                </div>	

                                <a href="${pageContext.request.contextPath}/productionDetailAction_showArticleDetail?articleId=${article.articleId}" class="read_m pull-right">查看全文 <i class='glyphicon glyphicon-chevron-right'></i></a>

                            </div>
                        </div>

                    </div>
                </article>
                <!-- End Post 2 -->
    </c:forEach>
                <div class="clear"></div>

            </section>

            <!-- End Page Blog -->
   
              <div class="clear"></div>


        </div>
    </div>
</div>
                                            </div>
                                            <!-- End .blog -->

                                            <!-- .contact -->
                                            <div id="contact" class="content_2">
                                                
                                        <h1 class="h-bloc">交流 - 与我联系</h1>


                                        <div class="row">

                                            <div class="col-lg-12">
                                                <div class="row" id="contact-user">
                                                    <div class="col-md-5">
                                                        <div class="contact-info">
                                                            <!--<h3 class="main-heading"><span>Contact info</span></h3>-->

                                                            <div class="title_content" style="float: none;">
                                                                <div class="text_content">联系方式</div>
                                                                <div class="clear"></div>
                                                            </div>

                                                            <ul>
                                                                <li><span class="span-info"><i class="glyphicon glyphicon-map-marker"></i> 地址:</span> ${doer.address }<br /><br /></li>
                                                                <li><span class="span-info"><i class="glyphicon glyphicon-envelope"></i> Email:</span> ${doer.email }</li>
                                                                <li><span class="span-info"><i class="glyphicon glyphicon-phone"></i> 微信:</span> ${doer.weiChat }</li>
                                                                <li><span class="span-info"><i class="glyphicon glyphicon-comment"></i> QQ:</span>${doer.QQ }</li>
                                                            </ul>
                                                        </div>
                                                        <!-- /Contact Info -->
                                                        <div class="clear"></div>

                                                        <!--<h3 class="main-heading" style="margin-left: 22px;"><span>Follow me</span></h3>-->
                                              
                                                    </div>

                                                    <div class="col-md-7">
                                                        <!-- Contact Form -->
                                                        <div class="title_content" style="float: none;">
                                                            <div class="text_content">给我留言吧</div>
                                                            <div class="clear"></div>
                                                        </div>

                                                        <div class="contact-form">
                                                            <!--<h3 class="main-heading"><span>Let's keep in touch</span></h3>-->

                                                            <div id="contact-status"></div>

                                                            <form action="${pageContext.request.contextPath}/leaveMessageAction_makeAMessage?vision=1" id="contactform">
           														  <input type="hidden" name="toUser.uid" value="${doer.uid }"/>
 																  <input type="hidden" name="fromUser.uid" value="${user.uid }"/>
                                                                <p class="form-group" id="contact-message">
                                                                    <label for="message">留言板</label>
                                                                    <textarea name="message" cols="88" rows="6" class="form-control message-contact" id="inputError" placeholder="Hello..."></textarea>
                                                                </p>
                                                                <input type="reset" name="reset" value="CLEAR" class="reset">

                                                                <section class="button-demo" style="display: inline-block;">
                                                                    <button class="ladda-button submit send_email" name="submit" data-color="green" data-style="expand-left" onclick="window.open('${pageContext.request.contextPath}/img/MsgOK.jpg','','width=1000,height=650,toolbar=no, menubar=no, scrollbars=no, resizable=no')">传递留言</button>
                                                                </section>

                                                            </form>
                                                        </div>
                                                        <!-- /Contact Form -->
                                                    </div>
                                                </div>
                                            </div>  



                                        </div>                                            </div>
                                            <!-- End .contact -->

                                        </div>
                                        <!-- End #resp-tabs-container --> 

                                    </div><!-- End verticalTab -->

                                </div><!-- End flexy_content -->


                            </div><!-- End row -->

                        </div><!-- End col-md-12 -->

                    </div><!-- End row -->

                </div><!-- End container -->

            </section>
            <!-- End Content -->

        </div>
        <!-- End wrapper -->

      



        <!-- jquery | jQuery 1.11.0 -->
        <!-- Credits: http://jquery.com -->
        <script type="text/javascript" src="../../Doers/js/jquery.min.js"></script>

        <!-- Js | jquery.cycle -->
        <!-- Credits: https://github.com/malsup/cycle2 -->
        <script type="text/javascript" src="../../Doers/js/jquery.cycle2.min.js"></script>

        <!-- Js | bootstrap -->
        <!-- Credits: http://getbootstrap.com/ -->
        <script type="text/javascript" src="../../Doers/bootstrap/js/bootstrap.min.js"></script> 

        <!-- Js | easyResponsiveTabs -->
        <!-- Credits: http://webtrendset.com/demo/easy-responsive-tabs/Index.html -->
        <script type="text/javascript" src="../../Doers/js/easyResponsiveTabs.min.js"></script> 

        <!-- Js | jquery.cookie -->
        <!-- Credits: https://github.com/carhartl/jquery-cookie --> 
        <script type="text/javascript" src="../../Doers/js/jquery.cookie.js"></script>	

        <!-- Js | switcher -->
        <!-- Credits: http://themeforest.net/user/FlexyCodes -->
        <script type="text/javascript" src="../../Doers/js/switcher.js"></script>	

        <!-- Js | mCustomScrollbar -->
        <!-- Credits: http://manos.malihu.gr/jquery-custom-content-scroller -->
        <script type="text/javascript" src="../../Doers/js/jquery.mCustomScrollbar.concat.min.js"></script>		

        <!-- Js | gmaps -->
        <!-- Credits: http://maps.google.com/maps/api/js?sensor=true-->
        
        <script type="text/javascript" src="../../Doers/js/gmaps.min.js"></script>

        <!-- Js | Js -->
        <!-- Credits: http://themeforest.net/user/FlexyCodes -->
        <script type="text/javascript" src="../../Doers/js/main.js"></script>

        <!-- jquery | rotate and portfolio -->
        <!-- Credits: http://jquery.com -->
        <script type="text/javascript" src="../../Doers/js/jquery.mixitup.min.js"></script> 
        <script type="text/javascript" src="../../Doers/js/HeadImage.js"></script>
        
        <script type="text/javascript" src="../../Doers/js/jqthumb.js"></script>


        <!-- code js for image rotate -->
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
        $('.img1').jqthumb({
 		classname: 'jqthumb',  
        width          : 225,  
        height         : 115,  
        showoncomplete : true  });
        </script>
    </body>
</html>