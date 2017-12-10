

(function ($) {
    $.fn.hoverDelay = function (options) {
        var defaults = {
            hoverDuring: 500,
            outDuring: 200,
            clickOutDuring:0,
            hoverEvent: function () {
                $.noop();
            },
            outEvent: function () {
                $.noop();
            }
        };
        var sets = $.extend(defaults, options || {});
        return $(this).each(function () {
            var hoverTimer, outTimer;
            $(this).hover(function (event) {
                var e = event;
                var t = this;
                clearTimeout(outTimer);
                hoverTimer = setTimeout(function () {
                    sets.hoverEvent(e, t)
                }, sets.hoverDuring);
            }, function (event) {
                var e = event;
                var t = this;
                clearTimeout(hoverTimer);
                outTimer = setTimeout(function () {
                    sets.outEvent(e, t)
                }, sets.outDuring);
            });
            // kai--添加的click后的处理
            $('.showMemberCard > a').on('click',function(event){
                var e = event;
                var t = this;
                clearTimeout(hoverTimer);
                // outTimer = setTimeout(function () {
                    sets.outEvent(e, t)
                // }, sets.clickOutDuring);
            })
        });
    }
})(jQuery);
jQuery.support.cors = true;
var compuTitWidth = function () {
    var cardInfoTW = $('.card-info-title').width()
    var cardInfoTitleIconW1 = cardInfoTW - 42
    var cardInfoTitleIconW2 = cardInfoTW - 24

    $('.card-box').each(function (i, ele) {
        var cardTitIconLen = $(ele).find('.card-info-title').children('.title-icon').length
        if (cardTitIconLen == 0) {
            $(ele).find('.title-content').css({
                'width': cardInfoTW + 'px'
            })
        } else if (cardTitIconLen == 1) {
            $(ele).find('.title-content').css({
                'width': cardInfoTitleIconW2 + 'px'
            })
        } else if (cardTitIconLen == 2) {
            $(ele).find('.title-content').css({
                'width': cardInfoTitleIconW1 + 'px'
            })
        }
    })
}
compuTitWidth()
function addLinkNcCss(linkUrl){
    var link = document.createElement('link');
    link.type = 'text/css';
    link.rel = 'stylesheet';
    link.href = linkUrl;
    document.getElementsByTagName("head")[0].appendChild(link);
}
function addScriptNcJs(jsUrl){
    var script = document.createElement('script');
    script.src = jsUrl;
    document.getElementsByTagName("head")[0].appendChild(script);
}
addLinkCss('//g.alicdn.com/sd/ncpc/nc.css?t=1503630226832')
addScriptNcJs('//g.alicdn.com/sd/ncpc/nc.js?t=1503630226832')
function html_encode(str) {
    return str.replace(/</g, '&lt;').replace(/>/g, '&gt;');
}

function addHide(me) {
    me.parent().find('.author-info-card').addClass('hide')
}

var registerAuthorInfoEvent = function (showCardParsentsEle) {
    var timer = true

    $(showCardParsentsEle).find('.showMemberCard').hoverDelay({
        hoverEvent: function (e, t) {
            //e.stopPropagation()
            var me = $(t)
            //加载用户卡片
            loadUserData(me);
        },
        outEvent: function (e, t) {
            //e.stopPropagation()
            var me = $(t)
            addHide(me)
        }
    });
}
registerAuthorInfoEvent('.card-box')
registerAuthorInfoEvent('.fixed-left-box')
registerAuthorInfoEvent('.album-card-box');
// 详情 专辑 不是卡片的作者头像
registerAuthorInfoEvent('.js-hover-show-avainfo')
var loadUserData = function (thisDom) {
    var parent;
    if(thisDom.parents('.card-item').length > 0){
        parent = thisDom.parents('.card-item');
    }else if(thisDom.parents('.js-hover-show-avainfo').length > 0){
        parent = thisDom.parents('.js-hover-show-avainfo');
    }else{
        parent = thisDom.parents('.fixed-left-box');
    }
    
    var domHtml = parent.find('.author-info-card').html()
    if (typeof (domHtml) == "undefined" || $.trim(domHtml) == '') {
        userCardLoad(parent)
        var memberId = parent.find('.author-info-card').data('id')
        $.ajax({
            type: "get",
            url: "http://" + zMainDomain + "/member/card/" + memberId,
            xhrFields: {
                withCredentials: true
            },
            crossDomain: true,
            headers: {
                "X-Requested-With": "XMLHttpRequest"
            },
            traditional: true,
            success: function (result) {
                // console.log('validate name:' + result)
                if (result && result.code == 0) {
                    var html = template('author-info-templ', {
                        data: result.data
                    })
                    parent.find('.author-info-card').html(html)
                    if($('.preview-card-btn').length > 0){
                        $('.preview-card-btn .private-letter').removeAttr('onclick');
                    }
                    $('.author-info-card .js-project-focus-btn').append(zcoolFocusLoadingTpl);
                }
            }
        })
    } else {
        showAuthor(parent)
        if($('.preview-card-btn').length > 0){
            $('.preview-card-btn .private-letter').removeAttr('onclick');
        }
    }
}

var showAuthor = function (parent) {
    parent.find('.author-info-card').removeClass('hide')
}


var userCardLoad = function (parent) {
    var defultImg = '<img src="http://' + staticDomain + '/z/images/card-info-loading.svg" class="loadding-card">';
    parent.find('.author-info-card').html(defultImg)
    showAuthor(parent)
}

/*-- 回到顶部 --*/
function initBackTopSeat(){
    if($(document).scrollTop() >= $('#footer').offset().top - document.documentElement.clientHeight){
        $('.back-to-top').css({'bottom':$('#footer').height() - ($(document).height() - $(document).scrollTop() - document.documentElement.clientHeight - 34)})
    }else{
        $('.back-to-top').css({'bottom':34})
    }
}
var backTop = function () {
    var scrootp = $(document).scrollTop();
    var Heig = document.documentElement.clientHeight;
    star(Heig, '.back-to-top')
    $('.totop').click(function () {
        $('body,html').scrollTop('0');
        $('.subnav-wrap').removeClass(' tab-nav-fixed');
    })

    function star(a, b) {
        $(window).scroll(function () {
            if ($(document).scrollTop() > a) {
                $(b).stop(true, true).show();
                initBackTopSeat()
            } else {
                $(b).stop(true, true).hide();
            }

            if ($(document).scrollTop() > document.body.scrollHeight - document.body.clientHeight - 100) {
                if ($(".work-list-box.hide").length > 0) {
                    var loadTime = 300 + parseInt(700 * Math.random());
                    $("#page-loading").show();
                    setTimeout(function () {
                        $("#page-loading").hide();
                        $(".work-list-box.hide").removeClass("hide");
                        $(".pageturning.hide").removeClass("hide");
                    }, loadTime);
                }
            }
        })
    }
}
backTop()
$(window).on('resize',function(){
    initBackTopSeat()
})
// 纯文本弹窗自动提示
function pageTips(tipsText, secondTipsText) {
    pageToastSuccess(tipsText, secondTipsText)
}

function pageToastSuccess(tipsText, secondTipsText) {
    $('.toast-success').find('.toast-tips-text .toast-first-text').html(tipsText);
    if (secondTipsText) {
        $('.toast-tips-text .toast-socend-text').html(secondTipsText);
    }
    $('.toast-success').addClass('scale');
    setTimeout(function () {
        $('.toast-success').removeClass('scale');
    }, 1000)
}

function pageToastFail(tipsText, secondTipsText) {
    $('.toast-fail').find('.toast-tips-text .toast-first-text').html(tipsText);
    if (secondTipsText) {
        $('.toast-tips-text .toast-socend-text').html(secondTipsText);
    }
    $('.toast-fail').addClass('scale');
    setTimeout(function () {
        $('.toast-fail').removeClass('scale');
    }, 1000)
}

function pageToast(tipsText) {
    pageTips(tipsText);
}

function hideConfirmMaskLayer() {
        $('html').find('.confirm-shade').remove();
        $('html').removeClass('confirm-body-fixed');
        if (isWindows() && !$('.shade:not([data-discriminate])').is(':visible')) {
            $('html').removeClass('scroll-fixed');
        }
    }

function showConfirmMaskLayer() {
    $('html').append($('<div class="confirm-shade shade" data-discriminate="second"></div>'));
    $('html').addClass('confirm-body-fixed');
    if (isWindows()) {
        $('html').addClass('scroll-fixed');
    }
}

function pageConfirm(tipsText, secondTipsText, callback1, callback2) {
    

    showConfirmMaskLayer();
    $('.pop-up-confirm').removeClass('hide').find('.tips-text').html(tipsText);
    $('.pop-up-confirm .pop-confirm').unbind();
    $('.pop-up-confirm .pop-confirm').on('click', function () {
        $('.pop-up-confirm').addClass('hide');
        hideConfirmMaskLayer()
        if (callback1) {
            callback1()
        }
    });
    $('.pop-up-confirm .pop-cancel,.pop-up-confirm .pop-close').unbind();
    $('.pop-up-confirm .pop-cancel,.pop-up-confirm .pop-close').on('click', function () {
        $('.pop-up-confirm').addClass('hide');
        hideConfirmMaskLayer()
        if (callback2) {
            callback2()
        }
    })
}


// 提交时加loadding
function pageConfirmSeconds(tipsText, secondTipsText, callback1, callback2) {
    

    showConfirmMaskLayer();
    $('.pop-up-confirm').removeClass('hide').find('.tips-text').html(tipsText);
    $('.pop-up-confirm .pop-confirm').unbind();
    $('.pop-up-confirm .pop-confirm').on('click', function () {
        if (callback1) {
           loaddingBtnDis($(this))
           callback1()
        }
    });
    $('.pop-up-confirm .pop-cancel,.pop-up-confirm .pop-close').unbind();
    $('.pop-up-confirm .pop-cancel,.pop-up-confirm .pop-close').on('click', function () {
        $('.pop-up-confirm').addClass('hide');
        hideConfirmMaskLayer()
        cancelLoaddingBtnDis($('.pop-up-confirm .pop-confirm'))
        if (callback2) {
            callback2()
        }
    })
}



function fixedWindowPosition(curPopEle){
	if($('#lanage').val() == "en" && curPopEle.width() > 300){
		curPopEle.css({
			'width':"auto",
			'margin-left':-(curPopEle.width() / 2),
			'margin-top':-(curPopEle.height() / 2),
		})
	}
}


function zcoolToast(tipsText) {
    pageTips(tipsText);
}

function zcoolLoginRemindAlert(recommendLogin){
    // 为了更好的维护帐号安全体系，用户名登录功能已下线，请使用：
    zcoolAlert(messagesWeb.logIn.login_name_offline_tips)
    $('.tips-alert-text').next('.seconds-alert-text').remove();
    $('.alert-confirm').addClass('login-success-pop')
    $('.tips-alert-text').after("<p class='seconds-alert-text'><span class='hightlight'>"+recommendLogin+"</span>" + messagesWeb.logIn.login_copy + "</p>");
}

function zcoolAlert(message,fn1AlertCallback,fn2AlertCallback){
    $('.alert-confirm').removeClass('hide');
    $('.alert-confirm .tips-alert-text').html(message);
    var alertPopLM = $('.alert-confirm').width() / 2;
    var alertPopTM = $('.alert-confirm').innerHeight() / 2;
    $('.alert-confirm').css({'margin-left':-alertPopLM,'margin-top':-alertPopTM});
    $('.alert-confirm .pop-confirm').on('click',function(){
        $(this).parents('.alert-confirm').addClass('hide')
        $(this).unbind('click');
        if(fn1AlertCallback){
            fn1AlertCallback();
        }
        
    })
    $('.alert-confirm .pop-close').on('click',function(){
        $(this).parents('.alert-confirm').addClass('hide')
        $(this).unbind('click');
        if(fn2AlertCallback){
            fn2AlertCallback();
        }
    })
}

function zcoolToast_success(title, secondTitle) {
    $('.toast-global').show().find('.tips-text-normal').html(title + ":" + secondTitle)
    setTimeout(function () {
        $('.toast-global').hide()
    }, 1000)
}

// 意见反馈


function hideGlobalMaskLayer() {
    if($('.js-seconds-shade').is(':visible')){
        $('.js-seconds-shade').remove();
    }else{
        $('.shade').hide().removeClass('project-view');
        $('html').removeClass('body-fixed')
        $('.mask-layer').addClass('hide');
        if (isWindows()) {
            $('html').removeClass('scroll-fixed');
        }
    }
    
}
function showGlobalMaskLayer() {
    // 以防“showGlobalMaskLayer”执行多次，先把“js-seconds-shade元素移除”
    // $('.js-seconds-shade').remove();
    if($('.shade').is(':visible')){
        $('html').append($('<div class="js-seconds-shade"></div>'));
    }else{
        $('.shade').show().addClass('project-view');
        $('html').addClass('body-fixed');
        if (isWindows()) {
            $('html').addClass('scroll-fixed');
        }
    }
    
}

//判断是否登录函数
function islogin() {
    return getUid() > 0;
}


// 取消、关闭按钮 弹层消失
function confirmClose(obj) {
    obj.parents('.pop-up').hide();
    hideGlobalMaskLayer();
}
$('.pop-up .pop-cancel,.pop-up .pop-close').on('click', function () {
    confirmClose($(this))
})


function zCharCount(objs, options) {
	if(!options.warning){
	        options.warning = 0;
	    }
    var count = options.allowed - options.warning;
    if (count < 10) {
        objs.css('padding-right', '30px')
    } else if (count < 100) {
        objs.css('padding-right', '40px')
    } else if (count < 1000) {
        objs.css('padding-right', '50px')
    } else if (count < 10000) {
        objs.css('padding-right', '60px')
    }

    var defaults = {
        allowed: 2000,
        warning: 0,
        css: 'count'
    };
    var options = $.extend(defaults, options);
    objs.charCount(options);
}

function zCharCount_withExceedCount(objs, options) {
    var warning = 10000;
    if (options.exceed) {
        warning = options.exceed;
    }
    options.useWarningCount = true;
    options.allowed = options.allowed + warning;
    options.warning = warning;
    zCharCount(objs, options);
}

/*function nullStatusCompu() {
 var workNullHeight = 480;
 var workNullInner = $('.work-null-inner').height()
 var innerTop = (workNullHeight - workNullInner) / 2 + 'px'
 $('.work-null-inner').css('paddingTop', innerTop)
 }
 nullStatusCompu()*/

window.onresize = function () {
    compuTitWidth()
    // nullStatusCompu()
}
function checkThis(label) {
    $(label).removeClass('check-c').addClass('check-cd');
    $(label).find('input').prop('checked', true);
}
function halfCheckThis(label) {
    unCheckThis(label);
}
function unCheckThis(label) {
    $(label).addClass('check-c').removeClass('check-cd');
    $(label).find('input').prop('checked', false);
}
function hasCheckedThis(label) {
    return $(label).find('input').prop('checked');
}
$('body').on('click', 'label.label-checkbox', function () {
    checkboxChecked();
})
function checkboxChecked() {
    $("input[type='checkbox']").parent().removeClass('check-cd').addClass('check-c');
    $("input[type='checkbox']:checked").parent().removeClass('check-c').addClass('check-cd');
}


/**
 * 意见反馈
 */
$("#js-feedback-confirm").on('click', function () {
    var faq = {};
    var content = $("#form-data-content").val();
    if (!content) {
        // 反馈内容不能为空
        alert(messagesWeb.common_feedback_empty);
        return false;
    }
    faq.content = content;
    faq.contact = $("#form-data-contact").val();
    faq.pageId = location.href;

    var url = "http://" + zMainDomain + "/suggest";
    $.ajax({
        type: 'POST',
        xhrFields: {
            withCredentials: true
        },
        crossDomain: true,
        headers: {
            "X-Requested-With": "XMLHttpRequest"
        },
        url: url,
        data: JSON.stringify(faq),
        contentType: 'application/json',
        success: function (data) {
           
            if (data.code == 0) {
                $("#js-feedback-cancel").trigger('click');
                pageToastSuccess(messagesWeb.comment_toast_sucess);
                $("#form-data-content").val('');
                $("#form-data-contact").val('');
            } else {
                
                pageToastFail(data.msg)
            }
        },
        error: function () {
            // 系统异常,请稍候再试
            pageToastFail(messagesWeb.comment_toast_error1)
        }
    })
})

function showLoading(obj) {
    var loaddingUrl = 'http://'+staticDomain+'/z/images/common/page_loading.gif'
    obj.show().append('<img src="' + loaddingUrl + '" />');
}
function hideLoadding(obj) {
    var loaddingUrl = 'http://'+staticDomain+'/z/images/common/page_loading.gif'
    obj.hide().html('');
}
function navTypeTopFix() {
    var doc = $(document);
    var tabNav = $('.subnav-content-wrap');
    var tabNavOffsetTop = tabNav.position().top;
    var tabNavH = tabNav.height();
    var onoff = false;
    $('.subnav-content-wrap').css('height', tabNav.height());
    window.onresize = function(){
        // var tabNav = $('.subnav-wrap');
        // if(!$('.subnav-wrap').hasClass('tab-nav-fixed')){
            tabNavOffsetTop = tabNav.position().top;
        // }
        // $('.subnav-content-wrap').css('height', tabNav.height());
    }
    $(window).on('scroll', function (e) {
        var t = document.body || (document.documentElement && document.documentElement);
        var x = window.pageXOffset || t.scrollLeft;
        var y = window.pageYOffset || t.scrollTop;
         if(y >= 0){
            if ($('#confighome').is(":visible") == false) {
               
                if (doc.scrollTop() >= tabNavOffsetTop) {
                    $('.subnav-wrap').addClass('tab-nav-fixed');
                    $('.temporary-entrance').fadeOut('fast');
                } else {
                    $('.subnav-wrap').removeClass('tab-nav-fixed');
                    $('.temporary-entrance').fadeIn('fast');
                }
            } else {
                // 个人主页有装修主页时的处理
                if (doc.scrollTop() >= tabNavOffsetTop + $('#confighome').height()) {
                    $('.subnav-wrap').addClass('tab-nav-fixed')
                } else {
                   $('.subnav-wrap').removeClass('tab-nav-fixed');
                }
            }
         }
        if(x >= 0){
            $('.tab-nav-fixed').css('left',-window.pageXOffset);
        }
    })

}

var isMac = function () {
    return /macintosh|mac os x/i.test(navigator.userAgent);
}
isMac()
var isWindows = function () {
    return /windows|win32/i.test(navigator.userAgent);
}
isWindows()

$('.more-icon').on('click', function () {
    var moreHref = $(this).parents('a').attr('href');
    window.open(moreHref)
})

//以下注释是计算设计师卡片title折行问题
var computed = {
    computedFnTit: function () {
        return myFunc = function () {
            $('.author-info-title-box').each(function (i, ele) {
                var elew = $(ele).children('.author-info-title').width() + $(ele).children('.author-info-fire').width()
                var maxW = $('.author-info-title-box').width() - $(ele).children('.author-info-fire').width() - 10 + 'px'
                if (elew >= $('.author-info-title-box').width()) {
                    $(ele).children('.author-info-title').css('max-width', maxW).addClass('ellipsis')
                }
            })
        }
    },
    compareWidth: function () {
        this.computedFnTit()()
    }
}
if ($('.card-designer-list')) {
    computed.compareWidth()
}


// 卡片关注
function asyncAttentionCall(objParentsEle){
    objParentsEle.on('click', '.attention', function () {
        var followBtn = $(this);
        var isUnFollowStatus = createFollow.followstatus(followBtn);
        var succesCb;
        var errorCb;
        var Follow;
        var isLogined = islogin();
        var objectType = 1;
        var objectId = followBtn.parents('.author-info-card').attr("data-id");
        var followBtnParent = followBtn.parents(".author-info");
        if (followBtnParent.length > 0) {
            objectId = followBtnParent.attr("data-id");
            var dataType = followBtnParent.attr("data-type");
            if(dataType){
                objectType = dataType;
            }
        } else {
            objectId = objectId;
            objectType = objectType;
        }
        if (isUnFollowStatus) {
            succesCb = function (followStatus) {
                settingFollow(followStatus,followBtn);
            }; //前端实现
            errorCb = function (msg) {
                pageToastFail(msg);
                cancelLoadingFocusDis(followBtn);
                followBtn.val(followBtn.attr('data-val'))
            }; //前端实现

            Follow = new createFollow(objectId, objectType, succesCb, errorCb, isUnFollowStatus);

        } else {
            succesCb = function (followStatus) {
                settingFollow(followStatus,followBtn);
            }; //前端实现
            errorCb = function (msg) {
                alert(msg);
                cancelLoadingFocusDis(followBtn);
                followBtn.val(followBtn.attr('data-val'))
            }; //前端实现

            Follow = new createFollow(objectId, objectType, succesCb, errorCb, isUnFollowStatus);

        }

        if (isLogined) {
            loadingFocusDis(followBtn)
            Follow.doOrCancelFollow();
        } else {
    //        openLoginWindow(Follow.doOrCancelFollow)
            doLocalLogin(function () {
                Follow.doOrCancelFollow();
            });
        }

        // followstatus(followBtn)
        // islogin()  //是否登录状态
        //
        // var foufo = new CreateFollowOrUnFollowObj(cbbbb, followBtn);
        // foufo();

    })
}
asyncAttentionCall($('.card-box'))
asyncAttentionCall($('.js-hover-show-avainfo'))
asyncAttentionCall($('.js-item'))

function settingFollow(followStatus,followBtn) {
    if (followStatus == 1) {
        followBtn.addClass('btn-default-secondary').addClass('following').removeClass('notfollow')
            .removeClass('btn-default-main')
        followBtn.val(messagesWeb.common_followed);
        followBtn.attr('title', messagesWeb.common_followed_title);
    } else if (followStatus == 2) {
        followBtn.addClass('btn-default-secondary').removeClass('following').removeClass('notfollow')
            .removeClass('btn-default-main')
        followBtn.val(messagesWeb.common_mutual_concern);
        followBtn.attr('title', messagesWeb.common_mutual_concern_title);
    } else if (followStatus == 3 || followStatus == 0) {

        followBtn.removeClass('btn-default-secondary').addClass('btn-default-main').addClass('notfollow')
            .removeClass('following')
        followBtn.val(messagesWeb.common_follow)
        followBtn.attr('title', messagesWeb.common_follow_title)
    } else {
        alert("error2");
    }
    cancelLoadingFocusDis(followBtn);
}
function doLocalLogin(fn) { //每个页面自定义
    var cb0 = fn;

    var cb1 = function () { //更新推荐状态（最好页面推荐按钮通用有一个公共的class之类，有通用的data-id，data-type属性）
        console.log("更新推荐状态 待实现");
    };
    var cb2 = function () { //更新收藏状态（最好页面收藏按钮通用有一个公共的class之类，有通用的data-id，data-type属性）
        console.log("更新收藏状态 待实现");
    };
    var cb3 = function () { //更新关注(批量)状态（最好页面关注按钮通用有一个公共的class之类，有通用的data-memId属性）
        console.log("更新关注(批量)状态 待实现");
    };
    var cbs = [cb0, cb1, cb2, cb3];
    openLoginWindow(cbs);
}
// 私信
function prepareSendMessage(memberId, memberName) {
    function openPMWindow() {
        var privatePop = new PrivatePOP({memberId:memberId,memberName:memberName});
        privatePop.openPrivateWindow();
    };
    //var openPWindow = CreatePrivateMessageObj(memberId,memberName);
    if (islogin() == true) {
        openPMWindow()
    } else {
        doLocalLogin(openPMWindow);
    }
}


function loadimg(arr,funLoading,funOnLoad,funOnError){
    var numLoaded=0,
    numError=0,
    isObject=Object.prototype.toString.call(arr)==="[object Object]" ? true : false;
  
    var arr=isObject ? arr.get() : arr;
    for(a in arr){
        var src=isObject ? $(arr[a]).attr("data-src") : arr[a];
        preload(src,arr[a]);
    }
  
    function preload(src,obj){
        var img=new Image();
        img.onload=function(){
            numLoaded++;
            funLoading && funLoading(numLoaded,arr.length,src,obj);
            funOnLoad && numLoaded==arr.length && funOnLoad(numError);
        };
        img.onerror=function(){
            numLoaded++;
            numError++;
            funOnError && funOnError(numLoaded,arr.length,src,obj);
        }
        img.src=src;
    }
  
}
loadimg($(".work-show-item img"),funloading_obj);
function funloading_obj(numloaded,bl,src,obj){
obj.src=src;
}

function inputKeyDownBtnUseable(thisKeyDom,useableCurBtn, minLength) {
    
    $('body').on('change keyup paste',thisKeyDom, function () {
        var textAreaJq = $(this);//this 指向body
        if (thisKeyDom.val() != "" && thisKeyDom.val().length >= minLength) {
            useableCurBtn.addClass('btn-default-main').removeClass('btn-disabled').removeAttr('disabled')
        } else {
            useableCurBtn.removeClass('btn-default-main').addClass('btn-disabled').attr('disabled',true);
        }
        if(thisKeyDom.next('.count').length){
            if(thisKeyDom.next('.count').text() < 0){
                useableCurBtn.removeClass('btn-default-main').addClass('btn-disabled').attr('disabled',true);
            }else{
                useableCurBtn.addClass('btn-default-main').removeClass('btn-disabled').removeAttr('disabled')
            }
        }
    });
}

function loadingFocusDis(thisDom){
    thisDom.attr({
        'disabled':true,
        'data-val':thisDom.val()
    });
    thisDom.val('');
    if(thisDom.hasClass('btn-default-main')){
        thisDom.parents('.js-project-focus-btn,.js-c-loading-cover').find('.js-focus-loadding-btn').addClass('focus-loadding-y').removeClass('focus-loadding-s hide');
    }else{
        thisDom.parents('.js-project-focus-btn,.js-c-loading-cover').find('.js-focus-loadding-btn').addClass('focus-loadding-s').removeClass('focus-loadding-y hide');
    }
    
}
function cancelLoadingFocusDis(thisDom){
    thisDom.removeAttr('disabled');
    thisDom.parents('.js-project-focus-btn,.js-c-loading-cover').find('.js-focus-loadding-btn').addClass('hide');
}

function btnGifLoaddingShow(thisDom){
    thisDom.attr({
        'disabled':true,
        'data-val':thisDom.val()
    });
    thisDom.val('');
    if(thisDom.hasClass('btn-default-main')){
        thisDom.parents('.js-project-focus-btn,.js-c-loading-cover').find('.js-focus-loadding-btn').addClass('focus-loadding-y').removeClass('focus-loadding-s hide');
    }else{
        thisDom.parents('.js-project-focus-btn,.js-c-loading-cover').find('.js-focus-loadding-btn').addClass('focus-loadding-s').removeClass('focus-loadding-y hide');
    }
}

function btnGifLoaddingHide(thisDom){
    if(thisDom.attr('data-val')){
        thisDom.val(thisDom.attr('data-val'));
    }
    thisDom.removeAttr('disabled');
    thisDom.parents('.js-project-focus-btn,.js-c-loading-cover').find('.js-focus-loadding-btn').addClass('hide');
}


var zcoolFocusLoadingTpl = '<div class="js-focus-loadding-btn focus-loadding-y hide">'+
                '<div></div><div></div><div></div>' +
                '</div>';
// 单独 关注放置loadding
$('body .js-project-focus-btn').append(zcoolFocusLoadingTpl);


function loaddingDomAdd(loaddingCovers){
    if($(loaddingCovers + ' .js-focus-loadding-btn').length == 0){
        $(loaddingCovers).append(zcoolFocusLoadingTpl)
    }
}
// 放置三个点gif loadding元素 注：只需元素名，不要$
loaddingDomAdd('.js-c-loading-cover')

// 文案的loading
function loaddingBtnDis(thisDom){
    thisDom.attr({'disabled':true,'data-val':thisDom.val()});
    thisDom.val(messagesWeb.common_submitting).addClass('btn-disabled').removeClass('btn-default-main');
}
function cancelLoaddingBtnDis(thisDom){
    if(thisDom.attr('data-val')){
        thisDom.val(thisDom.attr('data-val'));
    }
    thisDom.removeAttr('disabled').removeClass('btn-disabled').addClass('btn-default-main');
}

// 默认隐藏的吸顶导航
function pDefaultHFixed(ifConditionalStatement,fixedDom){ 
    var fixedTimer;
    $(window).on('scroll',function(){
        var t = document.body || (document.documentElement && document.documentElement);
        var x = window.pageXOffset || t.scrollLeft;
        var y = window.pageYOffset || t.scrollTop;
        if(ifConditionalStatement()){
            fixedDom.addClass('js-H-fixed-show')
            fixedTimer = setTimeout(function(){
                $('.js-H-fixed-show').css('overflow','visible')
            },1000)
        }else{
            fixedDom.removeClass('js-H-fixed-show')
            fixedDom.removeAttr('style')
            clearTimeout(fixedTimer)
        }
        if(x >= 0){
            $('.js-H-fixed-show').css('left',-window.pageXOffset);
        }
    })
}


// 获取cookie
function getCookieKey(Key) {
    var allcookie = document.cookie.split('; ');
    var flag = 0;
    for (var i = 0; i < allcookie.length; i++) {
        var cookiearray = allcookie[i].split('=');
        var cookiename = cookiearray[0];
        var cookievalue = cookiearray[1];
        if (cookiename == Key) {
            var cookieString = decodeURI(cookievalue)
            Key = cookieString;
            flag = 1;
            break;
        }else{
           flag = 0;
        }
    }
    if(flag == 0){
        Key = null;
    }
    return Key;
}

// 
function setCookies(key, value, domain){
    var exp = new Date();
    exp.setTime(exp.getTime() + 30 * 24 * 60 * 60 * 1000);
    document.cookie = key + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/;domain=" + domain;
}

// 设置城市
function setCityDefault(nowProvince, nowCity) {
    if (nowProvince.val() == 0 || nowProvince.val() == 'undefined') {
        nowProvince.val('1')
        nowCity.attr('value', '47')
    } else if (nowCity.attr('value') == 0 || nowProvince.attr('value') == 'undefined') {
        nowProvince.val('1')
        nowCity.attr('value', '47')
    }
    nowProvince.parents('.city-box').find("a[data-code=" + nowProvince.val() + "]").click();
    nowCity.parents('.city-box').find("a[data-code=" + nowCity.attr('value') + "]").click();
}



// 弹窗第一个input显示光标
function popFirstInputFocus(thisDom){
    var val = thisDom.val(); 
    thisDom.focus(); 
    thisDom.val(''); 
    thisDom.val(val); 
}

// 上传作品气泡提示
function uploadPositionTips(){
    var html = '<div class="community-upicon-location-prompt">' +
        '<div class="community-tag-clip"></div>' +
        '<div class="upicon-location-tips">从这里发布你的创作 <i class="upicon-close-prompt closebtn"></i></div>' +
    '</div>'
    if(!$('.community-upicon-location-prompt').length){
        if(!getCookieKey('up_location_prompt')){
            $('#body .user-center .upload').append(html);
        }
    }
    setCookies('up_location_prompt','1',zMainDomain.replace("www.", "").replace("my.", ""))
    $('.upicon-close-prompt').on('click',function(){
        $('.community-upicon-location-prompt').fadeOut('fast',function(){
            $(this).remove()
        })
    })
}

uploadPositionTips()

function cancelbuble(e) {
    e && e.stopPropagation ? e.stopPropagation() : window.event.cancelBubble = true
}

function AEleUnbindPhoneTransfer(thisDom){
    // showRemindBindLayer 用户未绑定手机号提示用户绑定layer 在login-window.js中定义 
    showRemindBindLayer(authenUnbindPhoneCb)
    function authenUnbindPhoneCb(){
        window.location.href = thisDom.attr('data-url');
    }
}

function nullStatusBtnUnbindPhone(){
    $('.js-null-unbind-phone').on('click',function(){
        // 空状态跳转按钮未绑定手机号提示用户绑定  在main.js中定义 
        AEleUnbindPhoneTransfer($(this))
    })
    
}

$('body').on('click','label', function () {
    $("input[name=alone-radio]").parent().removeClass('radio-0').addClass('radio-1');
    $("input[name=alone-radio]:checked").parent().removeClass('radio-1').addClass('radio-0');
})

function bindCloseTplPopEv(){
    $('body .js-tpl-pop').on('click','.pop-close,.pop-cancel',function(){
        $(this).parents('.js-tpl-pop').hide();
        hideGlobalMaskLayer()
    })
}


// 产品建议
function getUsername() {
    if (getUserInfoFromCookie() != null) {
        return JSON.parse(getUserInfoFromCookie()).username;
    }else{
        return $('.js-PM-suggest').attr('info-username');
    }
}
function getUPageurl(){
    if (getUserInfoFromCookie() != null) {
        return JSON.parse(getUserInfoFromCookie()).pageUrl;
    }else{
        return $('.js-PM-suggest').attr('info-href');
    }
}
function setSubFailureCookie(){
    var curDate = new Date();  
  
    //当前时间戳    
    var curTamp = curDate.getTime();  
  
    //当日凌晨的时间戳,减去一毫秒是为了防止后续得到的时间不会达到00:00:00的状态    
    var curWeeHours = new Date(curDate.toLocaleDateString()).getTime() - 1;  
  
    //当日已经过去的时间（毫秒）    
    var passedTamp = curTamp - curWeeHours;  
  
    //当日剩余时间    
    var leftTamp = 24 * 60 * 60 * 1000 - passedTamp;  
    var leftTime = new Date();  
    leftTime.setTime(leftTamp + curTamp);  
    //创建cookie    
    document.cookie =  "suggest" + getUid() + "=" + escape('1') + ";expires=" + leftTime.toGMTString() + ";path=/;domain=" + zMainDomain.replace("www.", "").replace("my.", "");
}

zPMSuggestModule = {
    getElements:{
        HelloPM:$('.js-PM-suggest'),
    },
    popHtmlStr:function(){
        var html = '<div class="pop-up pop-pm-suggest js-tpl-pop hi-de">' +
            '<div class="popup-title">Hello <a href="' + getUPageurl() + '" class="zcool-link-color">' + getUsername() + '</a>，你有什么要对我说的吗</div>' +
            '<div class="popup-con">' +
                '<div class="suggest-box">' +
                    '<div class="radio suggest-item">' +
                        '<label for="suggest_radio0" class="radio-0"><input type="radio" name="alone-radio" id="suggest_radio0" value="9" checked="checked" class="">新需求</label>' +
                        '<label for="suggest_radio1" class="radio-1"><input type="radio" name="alone-radio" id="suggest_radio1" value="10" class="">已有功能建议 </label>' +
                        '<label for="suggest_radio2" class="radio-1"><input type="radio" name="alone-radio" id="suggest_radio2" value="11" class="">脑洞</label>' +
                    '</div>' +
                '</div>' +
                '<div class="mt-20">' +
                    '<textarea type="text" class="textarea-style2" placeholder="请留下不少于50字的黄金箴言" id="suggest-content"></textarea>' +
                '</div>' +
                '<div class="pop-auxiliary-tips mt-10">内容类问题、系统bug、数据错误等请移步<a href="http://' + zMainDomain + '/onlineQue" class="zcool-link-color">意见反馈</a><span class="right c-999 f-14">不少于50字</span></div>' +
                '<div class="text-center">' +
                    '<input type="button" name="" class="btn-disabled pop-confirm" disabled="true" value="发送">' +
                    '<input type="button" name="" class="btn-default-secondary pop-cancel" value="取消">' +
                '</div>' +
            '</div>' +
            '<i class="pop-close"></i>' +
        '</div>'
        return html;
    },
    suggestTipsHtmlStr:function(){
        var html = '<div class="pop-up pm-suggest-tips js-tpl-pop">' +
            '<div class="tips-con-box">' +
                '<div class="img-item">' +
                    '<img src="http://' + staticDomain + '/z/images/weixinicon.png" width="40" height="40" /><span class="sug-tips-item">Hello <a href="' + getUPageurl() + '" class="zcool-link-color">' + getUsername() + '</a>，你的建议我已收到。</span>' +
                '</div>' +
                '<div class="img-item"><img src="http://' + staticDomain + '/z/images/weixinicon.png" width="40" height="40" />' +
                    '<span class="sug-tips-item">' +
                        '我们会结合广大站酷用户的各类建议综合评估<br />' +
                        '推演出结论后不断优化站酷各个产品线 <br/>' +
                        '再次感谢你对站酷社区的贡献。' +
                    '</span>' +
                '</div>' +
                '<div class="con-item-box">' +
                ' 现在，你可以：' +
                    '<div class="mt-10">' +
                        '1:作品证明一切，发个作品晒晒吧！ <a href="http://' + zMyDomain + '/uploadProduct" class="zcool-link-color">去发布</a> <br/> ' +
                        '2:浏览最新编辑精选内容， <a href="http://' + zMainDomain + '/discover" class="zcool-link-color">查看精选内容</a> <br/> ' +
                        '3:看看关注的人们最近动态，<a href="http://' + zMyDomain + '/focus/activity" class="zcool-link-color">查看我关注的动态</a> <br/>' +
                    '</div>' +
                '</div>' +
            '</div>' +
            '<i class="pop-close"></i>' +
        '</div>';
        return html;
    },
    suggestTipsHtmlStr2:'<div class="pop-up pop-close-tips js-tpl-pop">' +
            '<div class="envelop-image"></div>' +
            '<div class="text-center">你今天已经提过了宝贵建议，明天再来吧！</div>' +
            '<i class="pop-close"></i>' +
        '</div>',
    bind:function(){
        var _this = this;
        function suggestSubmitSuccessCb(){
            setSubFailureCookie()
            $('.pop-pm-suggest').hide();
            if(!$('.pm-suggest-tips').length){
                $('body').append(_this.suggestTipsHtmlStr())
            }else{
                $('.pm-suggest-tips').show()
            }
            bindCloseTplPopEv()
        }
        function showSuggestPopCb(){
            $('.js-tpl-pop').off('click');
            // suggest Cookie记录只能投递一次
            if(!getCookieKey('suggest' + getUid())){
                var suggestPop = $('.pop-pm-suggest');
                !suggestPop.length?$('body').append(_this.popHtmlStr()):suggestPop.show();
                showGlobalMaskLayer();
                inputKeyDownBtnUseable($('#suggest-content'),$('.pop-pm-suggest .pop-confirm'),50)
                $('.pop-pm-suggest .pop-confirm').on('click',function(){
                    var obj = {}
                    var contents = $('#suggest-content').val();
                    obj.type = parseInt($('.pop-pm-suggest .suggest-item input:checked').val());
                    obj.content = contents;
                    obj.pageId = window.location.href;
                    if(contents != "" && !$(this).attr('disabled')){
                        $.ajax({
                            type: "post",
                            url: "http://" + zMyDomain + "/suggest/pm",
                            data: JSON.stringify(obj),
                            xhrFields: {
                                withCredentials: true
                            },
                            crossDomain: true,
                            headers: {
                                "X-Requested-With": "XMLHttpRequest"
                            },
                            contentType: 'application/json',
                            success: function (data) {
                                if(data.code == 0){
                                    suggestSubmitSuccessCb()
                                }else{
                                    pageToastFail(data.msg)
                                }
                            }
                        });
                    }else{
                        pageToastFail("请输入内容")
                    }
                    
                })
                
            }else{
                if(!$('.pop-close-tips').length){
                    $('body').append(_this.suggestTipsHtmlStr2)
                }else{
                    $('.pop-close-tips').show()
                }
                showGlobalMaskLayer()
            }
            bindCloseTplPopEv()
         }

        function showPMsuggestPop(){
            if(!getUsername()){
                var _t = new Date().getTime();
                $.ajax({
                    type: "GET",
                    url: "http://" + zMyDomain + "/nav/getUserInfo.json?_t=" + _t,
                    xhrFields: {
                        withCredentials: true
                    },
                    crossDomain: true,
                    headers: {
                        "X-Requested-With": "XMLHttpRequest"
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data.code == 0) {
                            // syncUserInfoToCookie(data.data);
                            $('.js-PM-suggest').attr({
                                'info-username':data.data.username,
                                'info-href':data.data.pageUrl
                            })
                            showSuggestPopCb()
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log(errorThrown)
                    }
                });
            }else{
                showSuggestPopCb()
            }
            
            
        }

        
        _this.getElements.HelloPM.on('click',function(){
            if(!islogin()){
                doLocalLogin(showPMsuggestPop)
                return false;
            }else{
                showPMsuggestPop()
            }
        })
        
    }
}
zPMSuggestModule.bind()


// 猜你喜欢

function relatedLikeAsync(){
    var objId = $('#dataInput').attr('data-objid');
    var objType = $('#dataInput').attr('data-objtype');
    $.ajax({
        type: "GET",
        url: "http://"+ zMainDomain +"/show/recommend",
        xhrFields: {
            withCredentials: true
        },
        crossDomain: true,
        headers: {
            "X-Requested-With": "XMLHttpRequest"
        },
        dataType: "json",
        success: function (data) {
            if (data.code == 0 && data.data.length != 0) {
                data.data.slice(0,4)
                renderRelatedSuccessTpl(data)
            }
        },
        error: function(){
            console.error("error:");
        }
    })
    function renderRelatedSuccessTpl(data){
        console.log(data)
        var relatedHtml = template('related-recommend-tpl',data)
        $('#related-like').html(relatedHtml);
        registerAuthorInfoEvent('#related-like');
        asyncAttentionCall($('#related-like'))
    }
}