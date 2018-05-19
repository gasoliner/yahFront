<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>${enterprise.name}</title>
    <meta name="mobile-agent" content="format=xhtml;https://m.51job.com/search/codetail.php?coid=3117271">
    <meta name="mobile-agent" content="format=html5;https://m.51job.com/search/codetail.php?coid=3117271">
    <meta name="mobile-agent" content="format=wml;https://m.51job.com/search/codetail.php?coid=3117271">
    <meta name="robots" content="all">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="applicable-device" content="pc">
    <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
    <link href="//js.51jobcdn.com/in/css/2017/public/base.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/2017/public/form.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/2017/public/panel-pop.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/jobs/detail.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//jobs.51job.com/all/co3117271.html" rel="canonical" />
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/jQuery.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/Base.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/Base.ZzLayer.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/Base.ZzLayer.ExtZzLayer.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/search/Base.Search_Transition.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/login.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/ScrollText.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/payservice/GetCompetition.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/jobs/posterImgShow.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/jobs/codetail.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/component/mobile.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/jobs/headerlayer.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer.js?20180408"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/jobs/pointtrack_jobs.js?20180408"></script>
</head>
<body>
<div class="header">
    <!-- bar start -->
    <jsp:include page="bar.jsp"/>
    <!-- top end -->
    <!-- nag start -->

    <div id="area_channel_layer_backdrop" class="layer_back_drop_class" style="z-index:999;position:absolute;z-index:999;left:0;top:0;display:none"></div>

    <script>
        function areaChannelChangeTab(sName, oEvent)
        {
            $("#area_channel_layer_all").children().hide();
            $("#area_channel_layer_list").children().removeClass("on");
            $(oEvent).addClass("on");
            $("#area_channel_layer_all").children("div[name='area_channel_div_" + sName + "']").show();
            $("#area_channel_layer_backdrop").show();
        }

        function openAreaChannelLayer()
        {
            setLayerPosition();
            $("#area_channel_layer,#area_channel_layer_backdrop").show();
        }

        function setLayerPosition()
        {
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

        $(window).resize(function(){
            if(!$("#area_channel_layer").is(":hidden"))
            {
                setLayerPosition();
            }
        });
    </script>
    <jsp:include page="neg.jsp"/>
    <!-- nag end -->
</div><!--company page1-->
<input type="hidden" id="pageCode" value="10204" >
<div class="tCompanyPage">
    <div class="tCompany_center clearfix">
        <div id="tHeader_mk" style="height:0"></div>
        <div class="tHeader tHCop">
            <div class="in ">
                <h1 title="${enterprise.name}">${enterprise.name}</h1>
                <p class="ltype">
                    ${enterprise.nature}          		          			&nbsp;&nbsp;|&nbsp;&nbsp;${enterprise.scale}
                        &nbsp;&nbsp;|&nbsp;&nbsp;${enterprise.trade}
                </p>
                <div class="clear"></div>
            </div>
        </div>
        <div class="tBorderTop_box">
            <h2>
                <span class="bname">企业信息</span>
            </h2>
            <div class="bmsg inbox">

                <p class="fp">
                    <span >企业名称：</span>${enterprise.name}
                </p>

                <p class="fp">
                    <span >企业性质：</span>${enterprise.nature}
                </p>

                <p class="fp">
                    <span >企业规模：</span>${enterprise.scale}
                </p>

                <p class="fp">
                    <span >企业站点：</span>${enterprise.website}
                </p>

                <p class="fp">
                    <span >经营行业：</span>${enterprise.trade}
                </p>

                <p class="fp">
                    <span >企业地址：</span>${enterprise.addr}
                </p>

                <p class="fp">
                    <span >联系方式：</span>${enterprise.phone}
                </p>

                <p class="fp">
                    <span >官方邮箱：</span>${enterprise.email}
                </p>

                <p class="fp">
                    <span >企业简介：</span>${enterprise.info}
                </p>
                <div class="clear"></div>
            </div>
        </div>
        <div class="tCompany_full">
            <%--<div class="tBorderTop_box">--%>
                <%--<div class="tmsg inbox">--%>
                    <%--<div class="con_msg">--%>
                        <%--<div class="in">--%>
                            <%--<div class="con_txt">${enterprise.info}</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="tBorderTop_box bmsg">--%>
                <%--<div class="inbox">--%>
                    <%--<p class="fp">--%>
                        <%--<span class="label">公司地址：</span>${enterprise.addr}--%>
                    <%--</p>--%>
                    <%--<div class="clear"></div>--%>
                <%--</div>--%>
                <p class="tPosition_center_bottomText">
                    *发布本招聘广告企业的营业执照名称：${enterprise.name}        </p>
            <%--</div>--%>
        </div>
        <script>
            if(document.getElementById("announcementbody")){
                var scrollup = new ScrollText("announcementbody");
                scrollup.Amount = 1;
                scrollup.Delay = 20;
                scrollup.Start();
            }
        </script>
        <!--热门搜索 end-->
    </div>
</div>
</div>
</body>
</html>

<script language='javascript'>
    <!--
    window.cfg = {
        fileName: '' ,
        lang : 'c' ,
        stype : '' ,
        fullLang : 'Chinese' ,
        langs : {
            sqzwml : 'applyjob' ,
            qzzwqdg : '请在要选择的职位前打勾!' ,
            myml : 'my' ,
            ts_qxjzw : '请选择职位' ,
            queren : '确认' ,
            guanbi : '关闭' ,
            nzdnxj : '您最多能选择' ,
            xiang : '项' ,
            xzdq : '选择地区' ,
            xj_xg : '选择/修改' ,
            zycs : '主要城市' ,
            sysf : '所有省份' ,
            tspd : '特殊频道' ,
            buxian : '不限' ,
            qingxj : '请选择' ,
            yixuan : '已选' ,
            znlb : '职能类别' ,
            hylb : '行业类别' ,
            gzdd : '工作地点' ,
            quanbu : '全部' ,
            zhineng : '职能' ,
            hangye : '行业' ,
            didian : '地点' ,
            qsrgjz : '请输入关键字' ,
            srpcgjz : '输入排除关键字'
        } ,
        url : {
            root : 'https://search.51job.com/jobsearch' ,
            image : '//img04.51jobcdn.com/im/2009' ,
            image_search : '//img04.51jobcdn.com/im/2009/search' ,
            image_search_lang : '//img04.51jobcdn.com/im/2009/search/c' ,
            image_search_c : '//img04.51jobcdn.com/im/2009/search/c' ,
            image_search_e : '//img04.51jobcdn.com/im/2009/search/e'
        } ,
        domain : {
            my_ssl : 'https://mylogin.51job.com',
            my : 'http://my.51job.com/',
            login : 'https://login.51job.com/',
            search : 'https://search.51job.com/',
            www : 'https://www.51job.com/',
            jobs : '//jobs.51job.com/',
            jianli : 'https://jianli.51job.com/',
            company : 'https://company.51job.com/',
            i : '//i.51job.com/',
            jc : 'https://jc.51job.com/',
            map : 'DOMAIN_MAP',
            m : 'DOMAIN_M',
            cdn : 'DOMAIN_JS',
            img : '//img04.51jobcdn.com/'
        } ,
        isJobview : '1' ,
        isAcStatRecJob : '1' ,
        acStatRecJobType : '0803111457',
        isSearchDomain : '1' ,
        root_userset_ajax: '//i.51job.com/userset/ajax'
    };

    var trackConfig = {
        'guid': '15217112543847710034',
        'ip': '202.110.209.175',
        'accountid': '',
        'refpage': '/list/120700%252C00,000000,0000,00,9,99,%2B,2,1.html',
        'domain': 'jobs.51job.com',
        'pageName': 'codetail.php',
        'partner': ''
    };

    document.write('<scr' + 'ipt type="text/javascript" src="//js.51jobcdn.com/in/js/2016/pointtrack.js?20180330"></sc' + 'ript>');

    function searchInit() {
        if ( window.Search ) {
            clearInterval( intVal );
            window.zzSearch = new Search( {
                searchForm : document.searchForm ,
                pageForm : document.pageForm ,
                excludeForm : document.excludeForm ,
                pageJumpForm : document.pageJumpForm ,
                selJobPageForm : document.selJobPageForm ,
                cfg : cfg
            } );
        }
    }
    var systemtime = 1526646928789;
    var d_system_client_time = systemtime - new Date().getTime();
    var intVal = window.setInterval( searchInit , 50 );
    var onlySetJobareaLayer = true;
    //-->
</script>