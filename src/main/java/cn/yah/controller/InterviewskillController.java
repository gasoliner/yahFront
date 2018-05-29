package cn.yah.controller;

import cn.yah.po.Interviewskill;
import cn.yah.po.Page;
import cn.yah.service.InterviewskillService;
import cn.yah.vo.VoInterviewskill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping(value = "/interviewskill",produces = {"application/json;charset=UTF-8"} )
public class InterviewskillController {

    @Autowired
    InterviewskillService interviewskillService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoInterviewskill> list = interviewskillService.vo(interviewskillService.list(new Page()));
        request.setAttribute("interviewskillList",list);
        return "interviewskill";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Interviewskill interviewskill = interviewskillService.selectByPrimaryKey(id);
        List<Interviewskill> list = new ArrayList<>();
        list.add(interviewskill);
        List<VoInterviewskill> list1 = interviewskillService.vo(list);
        request.setAttribute("interviewskill",list1.get(0));
        return "interviewskill_detail";
    }

}
