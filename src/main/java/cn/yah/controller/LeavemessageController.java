package cn.yah.controller;

import cn.yah.po.Category;
import cn.yah.po.Leavemessage;
import cn.yah.po.Page;
import cn.yah.service.LeavemessageService;
import cn.yah.service.MemberService;
import cn.yah.vo.VoLeavemessage;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping(value = "/leavemessage",produces = {"application/json;charset=UTF-8"} )
public class LeavemessageController {

    @Autowired
    MemberService memberService;

    @Autowired
    LeavemessageService leavemessageService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoLeavemessage> list = leavemessageService.vo(leavemessageService.list(new Page()));
        request.setAttribute("leavemessageList",list);
        return "leavemessage";
    }

    @RequestMapping("/addition")
    public void add(Leavemessage leavemessage, HttpServletResponse response) throws IOException {
        leavemessage.setPublishtime(new Date());
        leavemessage.setPublisher(memberService.selectByPrimaryKey((Integer) SecurityUtils.getSubject().getPrincipal()).getName());
        try {
            leavemessageService.insert(leavemessage);
        } catch (Exception e) {
        }
        response.sendRedirect("/leavemessage/");
        return;
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
