function submitResume(rid) {
    $.post("/recruit/submitResume/" + rid,null,function (data) {
        if (data == "投递成功" || data == "系统出错，请稍后重试") {
            alert(data);
        } else {
            window.location.href = "/login/login_ui";
        }
    });
}























function newRecruit() {
    $("#fm").form("clear");
    $("#RecruitDialog").dialog("open").dialog("setTitle","新建");
    url = "/recruit/addition";
}
function editRecruit() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#RecruitDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/recruit/updates/"+row.rid;
    }
}
function destroyRecruit() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/recruit/deletion/"+row.aid,
                    success: function (res) {
                        alert(res);
                        $("#RecruitDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveRecruit() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#RecruitDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}

function newCategory() {
    $("#fm").form("clear");
    $("#CategoryDialog").dialog("open").dialog("setTitle","新建");
    url = "/category/addition";
}
function editCategory() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#CategoryDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/category/updates/"+row.cid;
    }
}
function destroyCategory() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/category/deletion/"+row.cid,
                    success: function (res) {
                        alert(res);
                        $("#CategoryDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveCategory() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#CategoryDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}

function newEnterprise() {
    $("#fm").form("clear");
    $("#EnterpriseDialog").dialog("open").dialog("setTitle","新建");
    url = "/enterprise/addition";
}
function editEnterprise() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#EnterpriseDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/enterprise/updates/"+row.eid;
    }
}
function destroyEnterprise() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/enterprise/deletion/"+row.eid,
                    success: function (res) {
                        alert(res);
                        $("#EnterpriseDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveEnterprise() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#EnterpriseDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showEnterprise() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showEnterpriseInfoDialog").dialog("open").dialog("setTitle",row.title);
        $("#name_content").html(row.name);
        $("#nature_content").html(row.nature);
        $("#scale_content").html(row.scale);
        $("#website_content").html(row.website);
        $("#trade_content").html(row.trade);
        $("#addr_content").html(row.addr);
        $("#phone_content").html(row.phone);
        $("#email_content").html(row.email);
        $("#img_content").html(row.voImg);
        $("#info_content").html(row.info);
    }
}
function showEnterprisePic(id) {
    $("#showEnterpriseDialog").dialog({
        title:"查看",
        width: 550,
        height: 550,
        closed: false,
        cache: false,
        modal: true
    });
    $("#att_img").attr("src","/enterprise/img/"+id);

}
function unlockEnterprise(id) {
    $.get("/enterprise/unlock/" + id,null,function (data) {
        alert(data);
        $('#dg').datagrid("reload");
    })
}
function lockEnterprise(id) {
    $.get("/enterprise/lock/" + id,null,function (data) {
        alert(data);
        $('#dg').datagrid("reload");
    })
}

function newJobfair() {
    $("#fm").form("clear");
    $("#JobfairDialog").dialog("open").dialog("setTitle","新建");
    url = "/jobfair/addition";
}
function editJobfair() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#JobfairDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/jobfair/updates/"+row.jfid;
    }
}
function destroyJobfair() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/jobfair/deletion/"+row.jfid,
                    success: function (res) {
                        alert(res);
                        $("#JobfairDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveJobfair() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#JobfairDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showJobfair() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showJobfairDialog").dialog("open").dialog("setTitle",row.title);
        $("#eid_content").html(row.voEid);
        $("#name_content").html(row.name);
        $("#content_content").html(row.content);
    }
}

function newNews() {
    $("#fm").form("clear");
    $("#NewsDialog").dialog("open").dialog("setTitle","新建");
    url = "/news/addition";
}
function editNews() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#NewsDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/news/updates/"+row.nid;
    }
}
function destroyNews() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/news/deletion/"+row.nid,
                    success: function (res) {
                        alert(res);
                        $("#NewsDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveNews() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#NewsDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showNews() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showNewsDialog").dialog("open").dialog("setTitle",row.title);
        $("#name_content").html(row.name);
        $("#content_content").html(row.content);
        $("#publishtime_content").html(row.publishtime);
    }
}


function newMail() {
    $("#fm").form("clear");
    $("#MailDialog").dialog("open").dialog("setTitle","新建");
    url = "/mail/addition";
}
function editMail() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#MailDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/mail/updates/"+row.maid;
    }
}
function destroyMail() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/mail/deletion/"+row.maid,
                    success: function (res) {
                        alert(res);
                        $("#MailDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveMail() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#MailDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showMail() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showMailDialog").dialog("open").dialog("setTitle",row.title);
        $("#name_content").html(row.name);
        $("#voSender_content").html(row.voSender);
        $("#voReceiver_content").html(row.voReceiver);
        $("#content_content").html(row.content);
        $("#time_content").html(row.time);
    }
}

function newInterviewskill() {
    $("#fm").form("clear");
    $("#InterviewskillDialog").dialog("open").dialog("setTitle","新建");
    url = "/interviewskill/addition";
}
function editInterviewskill() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#InterviewskillDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/interviewskill/updates/"+row.iid;
    }
}
function destroyInterviewskill() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/interviewskill/deletion/"+row.iid,
                    success: function (res) {
                        alert(res);
                        $("#InterviewskillDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveInterviewskill() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#InterviewskillDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showInterviewskill() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showInterviewskillDialog").dialog("open").dialog("setTitle",row.title);
        $("#name_content").html(row.name);
        $("#content_content").html(row.content);
        $("#publishtime_content").html(row.publishtime);
    }
}

function newMember() {
    $("#fm").form("clear");
    $("#MemberDialog").dialog("open").dialog("setTitle","新建");
    url = "/member/addition";
}
function editMember() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#MemberDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/member/updates/"+row.mid;
    }
}
function destroyMember() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/member/deletion/"+row.mid,
                    success: function (res) {
                        alert(res);
                        $("#MemberDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveMember() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#MemberDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showMember() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showMemberDialog").dialog("open").dialog("setTitle",row.title);
        $("#mid_content").html(row.mid);
        $("#name_content").html(row.name);
        $("#phone_content").html(row.phone);
        $("#email_content").html(row.email);
        $("#age_content").html(row.age);
        $("#university_content").html(row.university);
        $("#point_content").html(row.point);
        $("#idnumber_content").html(row.idnumber);
        $("#voResume_content").html(row.voResume);
    }
}
function showMemberResume(id) {
    window.open("/member/resume/" + id);
}

function newApply() {
    $("#fm").form("clear");
    $("#ApplyDialog").dialog("open").dialog("setTitle","新建");
    url = "/apply/addition";
}
function editApply() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#ApplyDialog").dialog("open").dialog("setTitle","编辑");
        $("#fm").form("load",row);
        url = "/apply/updates/"+row.aid;
    }
}
function destroyApply() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $.messager.confirm("Confirm","确定要删除这条记录吗",function (r) {
            if (r){
                $("#dfm").form("submit",{
                    url:"/apply/deletion/"+row.aid,
                    success: function (res) {
                        alert(res);
                        $("#ApplyDialog").dialog("close");
                        $("#dg").datagrid("reload")
                    }
                })
            }
        })
    }
}
function saveApply() {
    $("#fm").form("submit",{
        url:url,
        success: function (res) {
            alert(res);
            $("#ApplyDialog").dialog("close");
            $('#dg').datagrid("reload");
        }
    })
}
function showApplyMember() {
    var row = $("#dg").datagrid("getSelected");
    if (row){
        $("#showApplyDialog").dialog("open").dialog("setTitle",row.title);
        $("#mid_content").html(row.member.mid);
        $("#name_content").html(row.member.name);
        $("#phone_content").html(row.member.phone);
        $("#email_content").html(row.member.email);
        $("#age_content").html(row.member.age);
        $("#university_content").html(row.member.university);
        $("#point_content").html(row.member.point);
        $("#idnumber_content").html(row.member.idnumber);
        $("#voResume_content").html(row.voResume);
    }
}
function editInterviewOffer(id) {
    $.post("/apply/pass/" + id,null,function (data) {
        if(data != 'failed') {
            $("#receiveId").val(data);
        }
    });
    $("#fm").form("clear");
    $("#MailDialog").dialog("open").dialog("setTitle","新建");
}
function sendPassMail() {
    $.post("/mail/addition",
        {
            name:$("#pass_email_name").val(),
            receiver:$("#receiveId").val(),
            content:$("#pass_email_content").val()
        }
        ,function (data) {
        alert(data);
        $("#MailDialog").dialog("close");
        $('#dg').datagrid("reload");
    });
}
function refuseThisMan(id) {
    $.post("/apply/refuse/" + id, null,function (data) {
        alert(data);
        $('#dg').datagrid("reload");
    });
}




















function perInf1() {
    $.post("/manager/updates/" + $("#mid").val(),
        {
            mid:$("#mid").val(),
            name:$("#name").val(),
            username:$("#username").val(),
            sex:$("input[name='sex']:checked").val(),
            phone:$("#phone").val(),
            email:$("#email").val()
        },
        function (data) {
            alert(data);
        });
}
function perPas1() {
    $.post("/manager/password",
        {
            mid:$("#mid").val(),
            oldpassword:$("#oldpass").val(),
            newpassword1:$("#newpass1").val(),
            newpassword2:$("#newpass2").val()
        },
        function (data) {
            alert(data);
        });
}

function login() {
    $("#fm").form("submit",{
        url:"/user/signin",
        success:function (res) {
            window.location.href = res;
        }
    })
}
function logout() {
    $.get("/user/signout",null,function (res) {
        window.location.href = "/UI/sign";
    })
}