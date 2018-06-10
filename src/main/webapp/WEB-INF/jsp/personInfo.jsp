<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
    <title>会员个人信息维护丨You Are Hired !</title>
    <meta name="mobile-agent" content="format=html5; url=https://m.51job.com/my/register.php?partner=webmeta">
    <meta name="mobile-agent" content="format=xhtml; url=https://m.51job.com/my/register.php?partner=webmeta">
    <meta name="mobile-agent" content="format=wml; url=https://m.51job.com/my/register.php?partner=webmeta">
    <meta name="applicable-device" content="pc">
    <meta name="robots" content="all">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <link rel="canonical" href="https://login.51job.com/register.php?lang=c&amp;url=http%3A%2F%2Fwww.51job.com%2F" >
    <link href="https://js.51jobcdn.com/in/css/2017/public/base.css?20180408" rel="stylesheet" type="text/css" />
    <link href="https://js.51jobcdn.com/in/css/2017/public/form.css?20180408" rel="stylesheet" type="text/css" />
    <link href="https://js.51jobcdn.com/in/css/2017/public/panel-pop.css?20180408" rel="stylesheet" type="text/css" />
    <link href="https://js.51jobcdn.com/in/css/2017/member/login-register.css?20180408" rel="stylesheet" type="text/css" />
    <script language="javascript">
        var _tkd = _tkd || []; //点击量统计用
        var lang = [];
        var supporthttps = 1; //浏览器是否支持https
        var currenthttps = (window.location.protocol === 'https:') ? '1' : '0'; //当前是否为https
        var systemtime = 1526692935094;
        var d_system_client_time = systemtime - new Date().getTime();
        var trackConfig = {
            'guid': '15217112543847710034',
            'ip': '202.110.209.175',
            'accountid': '',
            'refpage': '/',
            'domain': 'login.51job.com',
            'pageName': 'register.php',
            'partner': ''
        };
        if (window.localStorage instanceof Object)
        {
        }
        window.cfg = {
            domain : {
                my : 'http://my.51job.com',
                login : 'https://login.51job.com',
                search : 'https://search.51job.com',
                www : '//www.51job.com',
                jobs : 'https://jobs.51job.com',
                jianli : 'https://jianli.51job.com',
                company : '//company.51job.com',
                i : '//i.51job.com',
                jc : '//jc.51job.com',
                map : 'https://map.51job.com',
                m : 'https://m.51job.com',
                cdn : '//js.51jobcdn.com',
                img : '//img03.51jobcdn.com'
            }
        };

        document.write('<scr'+'ipt type="text/javascript" src="//js.51jobcdn.com/in/js/2016/pointtrack.js?20180330"></sc'+'ript>');
        window.cfg.lang = 'c';
        window.cfg.url = {
            root : 'https://search.51job.com/jobsearch',
            image : '//img04.51jobcdn.com/im/2009',
            image_search : '//img02.51jobcdn.com/im/2009/search'
        }
        window.cfg.fileName = 'register.php';
        window.cfg.root_i = '//i.51job.com';
        window.cfg.root_userset_ajax = '//i.51job.com/userset/ajax';
        window.cfg.root_img = '//img03.51jobcdn.com/im/2016';
        window.cfg.root_www = '//www.51job.com';
        window.cfg.nowdate = '2018-05-19';
    </script>

    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/jquery.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/register.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/auth.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/mobile_original.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/layer/layer.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/d_nation.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/register_c.js?20180319"></script>
</head>
<body>
<div class="header">
    <div class="nag">
        <div class="in">
            <%--<a href="//www.51job.com"><img class="logo" width="116" height="46" src="//img03.51jobcdn.com/im/2016/logo/logo_20jubilee_116x46.png" alt="前程无忧"></a>--%>
            <%--<img class="slogen" width="162" height="17" src="//img02.51jobcdn.com/im/2016/header/slogen.png" alt="好工作尽在前程无忧">--%>

            <span class="gp" style="display:"></span>
            <span class="tl" style="display:">个人信息维护</span>
            <p class="nlink n2">
                <a href="${pageContext.request.contextPath}/">首页</a>
            </p>
        </div>
    </div>
</div>
<!-- 英文版为body添加class -->
<script>
</script>	<div class="lrcon l2 Fm">
    <div class="lrbox clearfix">
        <div class="lr_rt">
            <div class="lr_h">维护个人信息</div>
            <div style="color: #7aa3ff;font-size: 16px;margin: 10px;">${personInfo_change_result}</div>
            <%
                request.getSession().removeAttribute("personInfo_change_result");
            %>
            <form action="/member/personInfo_change" method="post" enctype="multipart/form-data" name="signup" id="signup" >
                <input type="hidden" name="mid" value="${member.mid}">
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>用户名</label>
                    <div class="txt">
                        <input class="ef"  type="text" autocomplete='off'  name="name" placeholder="建议填写真实姓名，方便企业联系您"  value="${member.name}" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>

                <%--<div class="lr_e">--%>
                    <%--<label>--%>
                        <%--<span class="err" style="display:none" id="pwd_err"></span>--%>
                        <%--密码                        </label>--%>
                    <%--<div class="txt">--%>
                        <%--<input class="ef" autocomplete='off' maxlength=16 type="password" name="password" placeholder="请输入密码"/>--%>
                        <%--&lt;%&ndash;<span class="icon_ok" style="display:none" id="userpwd_ok"></span>&ndash;%&gt;--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>联系方式</label>
                    <div class="txt">
                        <input class="ef"  type="text" autocomplete='off'  name="phone"  value="${member.phone}" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>邮箱地址</label>
                    <div class="txt">
                        <input class="ef"  type="text" autocomplete='off'  name="email"  value="${member.email}" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>年龄</label>
                    <div class="txt">
                        <input class="ef"  type="text" autocomplete='off'  name="age"  value="${member.age}" />
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>毕业大学</label>
                    <div class="txt">
                        <input class="ef"  type="text" autocomplete='off'  name="university"  value="${member.university}" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>特长</label>
                    <div class="txt">
                        <input class="ef"  type="text" autocomplete='off'  name="point"  value="${member.point}" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>身份证号（不可修改）</label>
                    <div class="txt">
                        <input class="ef" readonly="readonly"  type="text" autocomplete='off' placeholder="请符合身份证规范"  name="idnumber"  value="${member.idnumber}" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" ></span>上传简历（若想替换原简历文件可重新上传）</label>
                    <div class="txt">
                        <input class="ef"  type="file" autocomplete='off'  name="file"  value="" />
                        <%--<span class="icon_ok" style="display:none" id="phone_ok"></span>--%>
                    </div>
                </div>
                <div class="btnbox">
                    <button type="submit" class="p_but" id="submitbtn">提 交</button>
                </div>
            </form>
        </div>
        <script language="javascript">
            $(document).ready(function(){
                var scode = $("#scode").val();
                if(scode != ""){
                    if(scode == 3 || scode == 4) {
                        var str = $("#phonecode").val();
                        $("#phonecode").val("").focus().val(str);
                    }
                }
            });
        </script>

    </div>
    <div class="lr_bm"></div>
</div>
</body>
</html>