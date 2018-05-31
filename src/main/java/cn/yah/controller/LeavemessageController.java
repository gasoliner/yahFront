package cn.yah.controller;

import cn.yah.po.Leavemessage;
import cn.yah.po.Page;
import cn.yah.service.LeavemessageService;
import cn.yah.vo.VoLeavemessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping(value = "/leavemessage",produces = {"application/json;charset=UTF-8"} )
public class LeavemessageController {

    @Autowired
    LeavemessageService leavemessageService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoLeavemessage> list = leavemessageService.vo(leavemessageService.list(new Page()));
        request.setAttribute("leavemessageList",list);
        return "leavemessage";
    }

//    @RequestMapping("/detail/{id}")
//    public String detail(@PathVariable Integer id,HttpServletRequest request) {
//        Leavemessage leavemessage = leavemessageService.selectByPrimaryKey(id);
//        List<Leavemessage> list = new ArrayList<>();
//        list.add(leavemessage);
//        List<VoLeavemessage> list1 = LeavemessageService.vo(list);
//        request.setAttribute("leavemessage",list1.get(0));
//        return "leavemessage_detail";
//    }

}
