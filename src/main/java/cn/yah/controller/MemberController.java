package cn.yah.controller;

import cn.yah.po.Enterprise;
import cn.yah.po.Page;
import cn.yah.service.EnterpriseService;
import cn.yah.vo.VoEnterprise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/member",produces = {"application/json;charset=UTF-8"} )
public class MemberController {

    @Autowired
    EnterpriseService enterpriseService;


    @RequestMapping("/personInfo")
    public String personInfo(HttpServletRequest request) {
        List<VoEnterprise> list = enterpriseService.vo(enterpriseService.list(new Page()));
        request.setAttribute("enterpriseList",list);
        return "enterprise";
    }

    @RequestMapping("/personInfo_change")
    public String personInfo_change(@PathVariable Integer id, HttpServletRequest request) {
        Enterprise enterprise = enterpriseService.selectByPrimaryKey(id);
        List<Enterprise> list = new ArrayList<>();
        list.add(enterprise);
        List<VoEnterprise> list1 = enterpriseService.vo(list);
        request.setAttribute("enterprise",list1.get(0));
        return "enterprise_detail";
    }

}