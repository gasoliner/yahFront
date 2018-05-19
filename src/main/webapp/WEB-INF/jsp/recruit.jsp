<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <script type="text/javascript" src="/ui/custom.js"></script>
    <script type="text/javascript" src="/ui/jquery.min.js"></script>
    <%--<script type="text/javascript">--%>
    <%--$(function () {--%>
    <%--$.get("/recruit/list",null,function (data) {--%>
    <%--alert(data);--%>
    <%--$("#recruit_list").html(data);--%>
    <%--});--%>
    <%--});--%>
    <%--</script>--%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <meta name="mobile-agent"
          content="format=html5; url=https://m.51job.com/search/joblist.php?jobarea=120700&keyword=&partner=webmeta">
    <meta name="mobile-agent"
          content="format=xhtml; url=https://m.51job.com/search/joblist.php?jobarea=120700&keyword=&partner=webmeta">
    <meta name="robots" content="all">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <link href="//js.51jobcdn.com/in/css/2017/public/base.css?20180408" rel="stylesheet" type="text/css"/>
    <link href="//js.51jobcdn.com/in/css/2017/public/panel-pop.css?20180408" rel="stylesheet" type="text/css"/>
    <link href="//js.51jobcdn.com/in/css/2017/public/form.css?20180408" rel="stylesheet" type="text/css"/>
    <link href="//js.51jobcdn.com/in/css/jobs/dw_joblist.css?20180408" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/cv/CV_QuickApply.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/cv/Qpost_set.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/jquery.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/jquery.placeholder.min.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/JsBase.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/login.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/search/search_data_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/search/search_box.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/search/search_result.js?20180411"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2009/component/mobile.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/delivery/delivery.js?20180419"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/search/search.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/my/my_collection.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/common_layer.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/common_select.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_main_map.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_main.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_main_navigation.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/association_main.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/common_association.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/merge_data_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/area_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/indtype_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/funtype_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/search/pointtrack_search.js?20180319"></script>

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
<div class="dw_wp">

    <div class="dw_table" id="resultList">
        <div id="dw_tlc_mk"></div>

        <div class="el title">
            <span class="t1">职位名</span>
            <span class="t2">公司名</span>
            <span class="t3">工作地点</span>
            <span class="t4">薪资</span>
            <span class="t5">发布时间</span>
        </div>
        <c:forEach items="${recruitList}" var="recruit">

            <div class="el">
                <p class="t1 ">
                    <span>
                        <a href = "#" onclick="submitResume(${recruit.rid})">我要投递&nbsp;&nbsp;</a><span class="l">|</span>
                                <a target="_blank" title="${recruit.name}"
                                   href="${pageContext.request.contextPath}/recruit/detail/${recruit.rid}" onmousedown="">&nbsp;&nbsp;
                                        ${recruit.name}                                </a>
                            </span>
                </p>
                <span class="t2"><a target="_blank" title="${recruit.voEid}"
                                    href="${pageContext.request.contextPath}/enterprise/detail/${recruit.eid}">${recruit.voEid}</a></span>
                <span class="t3">${recruit.addr}</span>
                <span class="t4">${recruit.salary}</span>
                <span class="t5">${recruit.voPublish}</span>
            </div>

        </c:forEach>

        <!--列表表格 END-->
        <div class="dw_line"></div>

        <!-- getPageFormHtml start -->
        <form name="pageForm" action="" method="post" style="display:none">
            <input type="hidden" name="postchannel" value="0000">
            <input type="hidden" name="stype" value="1">
            <input type="hidden" name="jobarea" value="120700,00">
            <input type="hidden" name="district" value="000000">
            <input type="hidden" name="dibiaoid" value="0">
            <input type="hidden" name="address" value="">
            <input type="hidden" name="lonlat" value="0,0">
            <input type="hidden" name="line" value="">
            <input type="hidden" name="radius" value="-1">
            <input type="hidden" name="funtype" value="0000">
            <input type="hidden" name="industrytype" value="00">
            <input type="hidden" name="issuedate" value="9">
            <input type="hidden" name="keywordtype" value="2">
            <input type="hidden" name="keyword" value="">
            <input type="hidden" id="workyear" name="workyear" value="99">
            <input type="hidden" id="providesalary" name="providesalary" value="99">
            <input type="hidden" id="cotype" name="cotype" value="99">
            <input type="hidden" id="degreefrom" name="degreefrom" value="99">
            <input type="hidden" name="jobterm" value="99">
            <input type="hidden" name="ord_field" value="0">
            <input type="hidden" name="list_type" value="0">
            <input type="hidden" name="curr_page" value="1">
            <input type="hidden" name="nStart" value="1">
            <input type="hidden" name="ppc_num" value="0">
            <input type="hidden" name="ads_num" value="0">
            <input type="hidden" name="personnel_department_ad_num" value="0">
            <input type="hidden" name="jobid_list"
                   value="102013313~102404469~88065072~86912638~102411284~100889184~101442356~102398275~101625173~102406209~102403523~102400629~102400908~97727330~102393619~102399115~101916303~102397445~102396438~99397399~95128664~102389747~80440595~102389702~101500236~102388357~72554718~102128878~68401441~102361893~102085942~102350135~102383129~84810271~102370248~102361005~102383912~102382916~102374827~102371626~102361703~102360892~102359818~102353276~102349866~102345439~102197987~102115061~101851364~99964806">
            <input type="hidden" name="jobid_count" value="3636">
            <input type="hidden" name="schTime" value="3547">
            <input type="hidden" name="confirmdate" value="9">
            <input type="hidden" name="welfare" value="">
            <input type="hidden" name="fromType" value="">
            <input type="hidden" id="companysize" name="companysize" value="99">
            <input type="hidden" name="from" value="">
            <input type="hidden" id="providesalary_tmp" name="providesalary_tmp" value="99">
            <input type="hidden" id="cotype_tmp" name="cotype_tmp" value="99">
            <input type="hidden" id="workyear_tmp" name="workyear_tmp" value="99">
            <input type="hidden" id="degreefrom_tmp" name="degreefrom_tmp" value="99">
            <input type="hidden" id="companysize_tmp" name="companysize_tmp" value="99">
            <input type="hidden" name="pagejump"
                   value="https://search.51job.com/list/120700,000000,0000,00,9,99,%2B,2,&lt;&lt;pagecode&gt;&gt;.html?lang=c&amp;stype=1&amp;postchannel=0000&amp;workyear=99&amp;cotype=99&amp;degreefrom=99&amp;jobterm=99&amp;companysize=99&amp;lonlat=0%2C0&amp;radius=-1&amp;ord_field=0&amp;confirmdate=9&amp;fromType=&amp;dibiaoid=0&amp;address=&amp;line=&amp;specialarea=00&amp;from=&amp;welfare=">
        </form>
        <!-- getPageFormHtml end -->
        <script>
            $(function () {//返回顶部
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
            })
        </script>
    </div>
</div>

</body>
</html>

