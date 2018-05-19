package cn.yah.controller;

import cn.yah.po.Page;
import cn.yah.po.Enterprise;
import cn.yah.service.EnterpriseService;
import cn.yah.vo.VoEnterprise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ww on 2018/5/18.
 */
@Controller
@RequestMapping(value = "/enterprise",produces = {"application/json;charset=UTF-8"} )
public class EnterpriseController {

    @Autowired
    EnterpriseService enterpriseService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoEnterprise> list = enterpriseService.vo(enterpriseService.list(new Page()));
        request.setAttribute("enterpriseList",list);
        return "enterprise";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Enterprise enterprise = enterpriseService.selectByPrimaryKey(id);
        List<Enterprise> list = new ArrayList<>();
        list.add(enterprise);
        List<VoEnterprise> list1 = enterpriseService.vo(list);
        request.setAttribute("enterprise",list1.get(0));
        return "enterprise_detail";
    }

}
