<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>留言区 - You Are Hired_人才网_找工作_求职_上You Are Hired</title>
    <meta name="mobile-agent" content="format=xhtml; url=https://m.51job.com/?partner=webmeta">
    <meta name="mobile-agent" content="format=html5; url=https://m.51job.com/?partner=webmeta">
    <meta name="mobile-agent" content="format=wml; url=https://m.51job.com/?partner=webmeta">
    <meta name="applicable-device" content="pc">
    <meta name="robots" content="all">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <link rel="canonical" href="https://www.51job.com/">
    <link href="/ui/mymodel/sucai/base.css" rel="stylesheet" type="text/css">
    <link href="/ui/custom.css" rel="stylesheet" type="text/css">
    <link href="/ui/mymodel/sucai/form.css" rel="stylesheet" type="text/css">
    <link href="/ui/mymodel/sucai/home.css" rel="stylesheet" type="text/css">
    <link href="/ui/mymodel/sucai/panel-pop.css" rel="stylesheet" type="text/css">
    <link href="/ui/mymodel/sucai/style.css" rel="stylesheet" type="text/css">
    <script language="javascript">
        var _tkd = _tkd || []; //点击量统计用
        var lang = [];
        var supporthttps = 1; //浏览器是否支持https
        var currenthttps = (window.location.protocol === 'https:') ? '1' : '0'; //当前是否为https
        var systemtime = 1526617045817;
        var d_system_client_time = systemtime - new Date().getTime();
        var trackConfig = {
            'guid': '15217112543847710034',
            'ip': '202.110.209.175',
            'accountid': '',
            'refpage': '/tg/sem/logo_v1.html',
            'domain': 'www.51job.com',
            'pageName': 'default.php',
            'partner': ''
        };
        if (window.localStorage instanceof Object) {
        }
        window.cfg = {
            domain: {
                my: 'http://my.51job.com',
                login: 'https://login.51job.com',
                search: 'https://search.51job.com',
                www: '//www.51job.com',
                jobs: 'https://jobs.51job.com',
                jianli: 'https://jianli.51job.com',
                company: '//company.51job.com',
                i: '//i.51job.com',
                jc: '//jc.51job.com',
                map: 'https://map.51job.com',
                m: 'https://m.51job.com',
                cdn: '//js.51jobcdn.com',
                img: '//img02.51jobcdn.com'
            }
        };

        document.write('<scr' + 'ipt type="text/javascript" src="//js.51jobcdn.com/in/js/2016/pointtrack.js?20180330"></sc' + 'ript>');
    </script>
    <script type="text/javascript" src="/ui/mymodel/sucai/pointtrack.js"></script>

    <script language="javascript" src="/ui/mymodel/sucai/jquery.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/layer.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/common_layer.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/common_select.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/layer_main_map.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/layer_main.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/layer_main_navigation.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/register_c.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/area_array_c.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/layer_c.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/login.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/jquery.placeholder.min.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/pointtrack_www.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/chgFindType.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/jquery.lazyload.js"></script>
    <script language="javascript" src="/ui/mymodel/sucai/index_2012.js"></script>
    <script type="text/javascript" src="/ui/mymodel/sucai/trackData.js"></script>
</head>
<body>
<div class="header">
    <jsp:include page="bar.jsp"/>


    <div id="area_channel_layer_backdrop" class="layer_back_drop_class"
         style="z-index:999;position:absolute;z-index:999;left:0;top:0;display:none"></div>
    <script>
        function areaChannelChangeTab(sName, oEvent) {
            $("#area_channel_layer_all").children().hide();
            $("#area_channel_layer_list").children().removeClass("on");
            $(oEvent).addClass("on");
            $("#area_channel_layer_all").children("div[name='area_channel_div_" + sName + "']").show();
            $("#area_channel_layer_backdrop").show();
        }

        function openAreaChannelLayer() {
            setLayerPosition();
            $("#area_channel_layer,#area_channel_layer_backdrop").show();
        }

        function setLayerPosition() {
            var dl = $(document).scrollLeft();
            var dt = $(document).scrollTop();
            var ww = $(document).width();
            var dwh = $(document).height();
            var wwh = $(window).height();
            var ow = $("#area_channel_layer").width();
            var oh = $("#area_channel_layer").height();
            var fLeft = (ww - ow) / 2 + dl;
            var fTop = (wwh - oh) * 382 / 1000 + dt;//黄金比例
            $("#area_channel_layer").css({'left': Math.max(parseInt(fLeft), dl), 'top': Math.max(parseInt(fTop), dt)});
            $("#area_channel_layer_backdrop").css({'width': ww + 'px', 'height': dwh + 'px'});
        }

        $(window).resize(function () {
            if (!$("#area_channel_layer").is(":hidden")) {
                setLayerPosition();
            }
        });
    </script>
    <jsp:include page="neg.jsp"/>
    <!-- nag end -->
</div>
<script>
    var supporthttps = 1;
    var islogin = 0;
</script>
<div class="hm container">
    <div class="cn">
    </div>
    <script>
        function areaChannelHomepageChangeTab(sName, oEvent) {
            $("#area_channel_homepage_all").children().hide();
            $("#area_channel_homepage_list").children().removeClass("on");
            oEvent.addClass("on");
            $("#area_channel_homepage_all").children("div[name='area_channel_div_" + sName + "']").show();
        }

        function openAreaChannelHomepageDiv() {
            if ($("#area_channel_homepage_div").is(":hidden")) {
                $("#area_channel_homepage_div").show();
                areaChannelHomepageChangeTab('abc', $("#area_channel_homepage_list").children(":first"));
                $("#area_channel_homepage_more").addClass("on");
            }
            else {
                $("#area_channel_homepage_div").hide();
                $("#area_channel_homepage_more").removeClass("on");
            }
        }
    </script>

    <div class="blck cn">
        <strong class="tle c_orange">发布我的留言</strong>
        <div style="font-size: 16px;">
            <form action="/leavemessage/addition" method="post">
                <div style="margin: 25px">
                    <input style="width: 65%" type="text" placeholder="请输入标题..." name="name">
                </div>
                <div style="margin: 25px">
                    <textarea style="width: 65%" class="textareaComment" name="content" placeholder="请输入留言内容..."></textarea>
                </div>
                <div style="margin: 25px">
                    <input  type="submit" style="font-size:16px;width:200px;height:35px;line-height:35px;background:transparent url(/ui/sub.png) no-repeat;border:none;" value="发布留言" >
                </div>
                <div>&nbsp;</div>
            </form>
            <%--<p style="width: 70%; margin: 20px;">${leavemessage.content}--%>
                <%--<br/>--%>
                <%--${leavemessage.publisher}--%>
                <%--<br/>--%>
                <%--${leavemessage.voPublish}--%>
            <%--</p>--%>
            <div class="clear"></div>
        </div>
    </div>

    <c:forEach items="${leavemessageList}" var="leavemessage">
        <div class="blck cn">
            <strong class="tle c_orange">${leavemessage.name}</strong>
            <div id="jobfair" style="font-size: 16px;">
                <%--<ul>--%>
                    <%--<c:forEach items="${jobfairList}" var="jobfair">--%>
                        <%--<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·--%>
                            <%--<a target="_blank" title="${jobfair.name}"--%>
                               <%--href="${pageContext.request.contextPath}/jobfair/detail/${jobfair.jfid}" onmousedown="">&nbsp;&nbsp;--%>
                                    <%--${jobfair.name}--%>
                            <%--</a>--%>
                            <%--&nbsp;--%>
                        <%--</li>--%>
                    <%--</c:forEach>--%>
                <%--</ul>--%>
                    <p style="width: 80%; margin: 20px;">${leavemessage.content}
                    <br/>
                        <span id="notice_footer" style="display:block; width: auto; float:right; text-align:right;">
                                ${leavemessage.publisher}发表于
                            ${leavemessage.voPublish}
                        </span>
                        <br/>
                    </p>
                <div class="clear"></div>
            </div>
        </div>
    </c:forEach>


</div>
<%--<div class="clear"></div>--%>
</div>


<!--content end-->


<%--<div id="zoomer" class="" style="display:none;"></div>--%>

<script language="javascript">
    $(document).ready(function () {
        setTimeout(function () {
            $(".index_ad_popup").each(function () {
                var width = $(this).find("img").attr("width");
                width = parseInt(width) - 8;
                var height = $(this).find("img").attr("height");
                height = parseInt(height) - 8;
                var span = '<span class="ad_more" style="margin-top:' + height + 'px;margin-left:' + width + 'px;"> </span>';
                $(this).prepend(span);
            });
        }, 1);
        $("#zoomer").mouseleave(function () {
            $("#zoomer").css({
                "display": "none"
            });
            $("#zoomer").html('');
        });

        var $that = $('#hmScrollLinks .scrollin div');
        var w = $that.find('p').width();
        var htm = $that.html();
        var s = w / 0.06;

        $that.append(htm);

        function move() {
            s = (w + parseInt($that.css("left"))) / 0.06;
            $that.animate({'left': -w}, s, 'linear', function () {
                $that.css('left', 0);
                move();
            });
        }

        move();

        $('#hmScrollLinks .scrollin').hover(function () {
            $that.stop(true);
        }, function () {
            move();
        });

        //悬浮搜索框
        $(window).scroll(function () {
            var adtop = $('.hm .entry').offset().top;
            var wtop = document.documentElement.scrollTop + document.body.scrollTop;
            if (wtop > adtop) {
                $('.header.fix').fadeIn(400);
            } else {
                $('.header.fix').fadeOut(400);
            }
        });
        //返回顶部
        var stop = '';
        $(window).scroll(function () {
            $('#goTop').hide();
            stop = $(this).scrollTop();
            if (stop > 0) {
                $('#goTop').show();
            } else {
                $('#goTop').hide();
            }
        });

        $('.showLogin').click(function () {
            $('.content .ufm').animate({'bottom': 0}, 300, function () {
                $("#loginname").focus();
            });
        });

        $('.hideLogin').click(function () {
            $('.content .ufm').animate({'bottom': -248}, 300)
        });
    })
</script>
<jsp:include page="footer.jsp"/>
<div class="license">
    <div class="in">
        <p class="note">

        </p>
    </div>
</div>


<script language="javascript">
    <!--
    var systemtime = 1526617045823;
    var d_system_client_time = systemtime - new Date().getTime();
    window.cfg = {
        lang: 'c',
        fullLang: 'Chinese',
        fileName: 'default.php',
        tracedata: {
            domain: 'www.51job.com',
            guid: '15217112543847710034',
            ip: '202.110.209.175',
            accountid: '',
            searchkeyword: '',
        },
        domain: {
            my: 'http://my.51job.com',
            login: 'https://login.51job.com',
            search: 'https://search.51job.com',
            www: '//www.51job.com',
            jobs: 'https://jobs.51job.com',
            jianli: 'https://jianli.51job.com',
            company: '//company.51job.com',
            i: '//i.51job.com',
            jc: '//jc.51job.com',
            map: 'https://map.51job.com',
            m: 'https://m.51job.com'
        },
        url: {
            image: '//img02.51jobcdn.com/im/2009',
            image_search: '//img05.51jobcdn.com/im/2009/search',
            image_search_lang: '//img03.51jobcdn.com/im/2009/search/c',
            image_search_c: '//img02.51jobcdn.com/im/2009/search/c',
            image_search_e: '//img05.51jobcdn.com/im/2009/search/e'
        }
    };
    function searchInit() {
        if (window.JobLayer) {
            clearInterval(intVal);

            var param = {
                cfg: cfg,
                openNodes: document.frmKeywordSearch.btnJobarea,
                _valueNodes: document.frmKeywordSearch.jobarea,
                _textNodes: document.frmKeywordSearch.btnJobarea,
                isMulty: false,
                isHasNolimit: true
            };
            var jl = new JobareaLayer(param);
        }
    }
    var intVal = window.setInterval(searchInit, 50);

    function onloadFun() {
        if (window.$) {
            $(document).ready(function () {
                /*去除链接，button，image button的点击时虚线框*/
                $("a,input[type='button'],input[type='image'],input[type='submit'],area,img").bind("focus", function () {
                    if (this.blur) {
                        this.blur();
                    }
                })
            })
        } else {
            setTimeout("onloadFun()", 1000);
        }
    }
    onloadFun();
    function closeRightBottomLayer(sClassName) {
        $('.weifantang-wrap').hide();
    }

    //logo的hover效果
    $("#logo").attr("src", "//img03.51jobcdn.com/im/2016/logo/logo_20white_116x46.png");
    $("#slogen").attr("src", "//img01.51jobcdn.com/im/2016/header/slogen_fix.png");
    $("#topIndex").hover(function () {
        $("#logo").attr("src", "//img01.51jobcdn.com/im/2016/logo/logo_20jubilee_116x46.png");
        $("#slogen").attr("src", "//img05.51jobcdn.com/im/2016/header/slogen.png");
    }, function () {
        $("#logo").attr("src", "//img03.51jobcdn.com/im/2016/logo/logo_20white_116x46.png");
        $("#slogen").attr("src", "//img04.51jobcdn.com/im/2016/header/slogen_fix.png");
    });

    -->
</script>
<script language="javascript" type="text/javascript">
    <!--
    $(function () {
        $("img").lazyload({placeholder: "//img05.51jobcdn.com/im/2009/grey.gif", effect: "fadeIn", threshold: 200});
    });
    -->
</script>
</body>
</html>