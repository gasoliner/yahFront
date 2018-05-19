<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>欢迎登录丨You Are Hired!</title>
    <meta name="mobile-agent" content="format=html5; url=https://m.51job.com/my/login.php?partner=webmeta">
    <meta name="mobile-agent" content="format=xhtml; url=https://m.51job.com/my/login.php?partner=webmeta">
    <meta name="mobile-agent" content="format=wml; url=https://m.51job.com/my/login.php?partner=webmeta">
    <meta name="applicable-device" content="pc">
    <meta name="robots" content="all">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <link rel="canonical" href="https://login.51job.com/login.php?lang=c&amp;url=http%3A%2F%2Fwww.51job.com%2F" >
    <link href="https://js.51jobcdn.com/in/css/2017/public/base.css?20180408" rel="stylesheet" type="text/css" />
    <link href="https://js.51jobcdn.com/in/css/2017/public/form.css?20180408" rel="stylesheet" type="text/css" />
    <link href="https://js.51jobcdn.com/in/css/2017/member/login-register.css?20180408" rel="stylesheet" type="text/css" />
    <script language="javascript">
        var _tkd = _tkd || []; //点击量统计用
        var lang = [];
        var supporthttps = 1; //浏览器是否支持https
        var currenthttps = (window.location.protocol === 'https:') ? '1' : '0'; //当前是否为https
        var systemtime = 1526689289792;
        var d_system_client_time = systemtime - new Date().getTime();
        var trackConfig = {
            'guid': '15217112543847710034',
            'ip': '202.110.209.175',
            'accountid': '',
            'refpage': '/',
            'domain': 'login.51job.com',
            'pageName': 'login.php',
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
                img : '//img04.51jobcdn.com'
            }
        };

        document.write('<scr'+'ipt type="text/javascript" src="//js.51jobcdn.com/in/js/2016/pointtrack.js?20180330"></sc'+'ript>');
        window.cfg.lang = 'c';
        window.cfg.url = {
            root : 'https://search.51job.com/jobsearch',
            image : '//img03.51jobcdn.com/im/2009',
            image_search : '//img05.51jobcdn.com/im/2009/search'
        }
        window.cfg.fileName = 'login.php';
        window.cfg.root_i = '//i.51job.com';
        window.cfg.root_userset_ajax = '//i.51job.com/userset/ajax';
        window.cfg.root_img = '//img04.51jobcdn.com/im/2016';
        window.cfg.root_www = '//www.51job.com';
        window.cfg.nowdate = '2018-05-19';
    </script>

    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/jquery.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/login.js?20180319"></script>
    <script language="javascript" src="https://js.51jobcdn.com/in/js/2016/login/auth.js?20180319"></script>
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
            <span class="tl" style="display:">欢迎登录</span>
            <p class="nlink n2">
                <a href="${pageContext.request.contextPath}/">首页</a>
            </p>
        </div>
    </div>
</div>
<!-- 英文版为body添加class -->
<script>
</script>
<div class="lrcon Fm">
    <div class="lrbox clearfix">
        <div class="lr_lf">
            <div class="lr_c">
                <label class="l5"></label>
                <div class="lr_cn">
                    <p>便捷的简历填写</p>
                    <div class="c_999 f12">一份简历开启未来</div>
                </div>
            </div>
            <div class="lr_c">
                <label class="l6"></label>
                <div class="lr_cn">
                    <p>海量的职位优选</p>
                    <div class="c_999 f12">360行任你挑选</div>
                </div>
            </div>
            <div class="lr_c">
                <label class="l7"></label>
                <div class="lr_cn">
                    <p>快速的职位投递</p>
                    <div class="c_999 f12">分秒必争直达HR</div>
                </div>
            </div>
            <div class="lr_c">
                <label class="l8"></label>
                <div class="lr_cn">
                    <p>高效的投递反馈</p>
                    <div class="c_999 f12">谁看我简历早知道</div>
                </div>
            </div>
        </div>

        <div class="lr_rt">
            <input type="hidden" id="scode" name="scode" value=""/>
            <div class="lr_h">登 录</div>
            <%--<div class="errbox" style="display:none"><span class="err" id="account_err">帐号或密码错误</span><span style="display:none" id="seekpwd">--%>
                     <%--，是否 &nbsp;<a href="https://login.51job.com/forgetpwd.php?lang=c&from_domain=i&source=&isjump=0&url=http%3A%2F%2Fwww.51job.com%2F">找回密码</a></span></div>--%>


            <%--<form action="/login/login" method="post" name="signup" id="signup" onkeydown="if(event.keyCode==13)submitByType('login');">--%>
            <form action="/login/login" method="post" name="signup" id="signup" >
                <div class="lr_e">
                    <label><span class="err" style="display:none" id="username_err">帐号</span>帐号</label>
                    <div class="txt" style="z-index:9999;position:relative;">
                        <input class="ef" maxlength=100 id="loginname" name="name" type="text" autocomplete='off' placeholder="请输入账号" value=""/>
                        <div class="ul" style="display:none;top:40px" id="email_list">
                        </div>
                    </div>
                </div>
                <div class="lr_e">
                    <label><span class="err" style="display:none" id="pwd_err">密码</span>密码</label>
                    <div class="txt">
                        <input class="ef" autocomplete='off' id="password" name="password" type="password" placeholder="请输入密码" value="">
                    </div>
                </div>
                <%--<div class="lr_e e2" style="display:none" id="verifypic">--%>
                    <%--<label><span class="err" id="verifycode_err" style="display:none" id="verify_err">图形验证码错误或已过期</span>图形验证码</label>--%>
                    <%--<div class="txt">--%>
                        <%--<input class="ef" autocomplete='off' id="verifycode" maxlength=4 name="verifycode" type="text" placeholder="不区分大小写，点击图片可刷新" value="" onkeyup="chkverifycode()">--%>
                        <%--<input type="hidden" id="verifycodechked" value="0"/>--%>
                        <%--<span class="icon_ok" style="display:none" id="verifycode_ok"></span>--%>
                    <%--</div>--%>
                    <%--<img class="ac verifyPicChangeClick" onclick="changeVerifyCode()" id="verifyPic_img" type="3" align="absmiddle" src="" width="100" height="42">--%>
                <%--</div>--%>
                <%--<div class="lr_ok">--%>
                    <%--<a class="a" href="https://login.51job.com/forgetpwd.php?lang=c&from_domain=i&source=&isjump=0&url=http%3A%2F%2Fwww.51job.com%2F">忘记密码？</a>--%>
                    <%--<em id="isread_em" class="check on" onclick="checkBoxConnect('#isread', this)"></em>--%>
                    <%--<input type="checkbox" name="isread" id="isread" checked="true" style="display:none">--%>
                    <%--<label onclick="checkBoxConnect('#isread', '', '#isread_em')">自动登录</label>--%>
                <%--</div>--%>
                <div class="btnbox">
                    <button type='submit' class="p_but" id="login_btn">登 录</button>
                    ${login_code}
                </div>
            </form>
            <div class="lr_p">
                还没有帐号？<a class="a2" href="${pageContext.request.contextPath}/login/registry_ui">赶快跑着去注册</a>
            </div>

        </div>
    </div>
    <div class="lr_bm"></div>
</div>
<script language="javascript">
    $(document).ready(function(){
        var scode = $("#scode").val();
        if(scode != ""){
            var str = $("#loginname").val();
            $("#loginname").val("").focus().val(str);
        }
    });

    var sUrl = window.location.href.split('?')[0];
    var sRestr = 'lang=c&url=http%3A%2F%2Fwww.51job.com%2F';
    if ($('#interBtn').hasClass('iphone'))
    {
        sUrl = sUrl + '?' + sRestr + '&by=phone'
    }
    else
    {
        sUrl = sUrl + '?' + sRestr;
    }
    $('#interBtn').find('a').click(function(){
        window.location.href = sUrl;
    });
</script>
</body>
</html>