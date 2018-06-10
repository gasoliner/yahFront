package cn.yah.controller;

import cn.yah.po.Enterprise;
import cn.yah.po.Member;
import cn.yah.po.Page;
import cn.yah.service.EnterpriseService;
import cn.yah.service.MemberService;
import cn.yah.util.PageUtil;
import cn.yah.vo.VoEnterprise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/member",produces = {"application/json;charset=UTF-8"} )
public class MemberController {

    @Autowired
    MemberService memberService;


    @RequestMapping("/personInfo")
    public String personInfo() {
        return "personInfo";
    }

    @RequestMapping("/personInfo_change")
    public void personInfo_change(Member member, @RequestParam("file")CommonsMultipartFile file, HttpServletResponse response,HttpServletRequest request) throws IOException {
        String result = null;
        try {
//            prepare
            member.setPassword(null);
            member.setIdnumber(null);

            if (file.getSize() > 0) {
                member.setResume(PageUtil.uploadAnnex(request, file, "resume", member.getName()));
            }
            memberService.update(member);
            Member member_changed = memberService.selectByPrimaryKey(member.getMid());
            request.getSession().setAttribute("member",member_changed);
            result = "修改成功";
        } catch (Exception e) {
            result = "系统出错，请稍后再试";
        }
        request.getSession().setAttribute("personInfo_change_result",result);
        response.sendRedirect("/member/personInfo");
        return;
    }

}