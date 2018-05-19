package cn.yah.controller;

import cn.yah.po.Apply;
import cn.yah.po.Page;
import cn.yah.po.Jobfair;
import cn.yah.service.ApplyService;
import cn.yah.service.JobfairService;
import cn.yah.vo.VoJobfair;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ww on 2018/5/18.
 */
@Controller
@RequestMapping(value = "/jobfair",produces = {"application/json;charset=UTF-8"} )
public class JobfairController {

    @Autowired
    JobfairService jobfairService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoJobfair> list = jobfairService.vo(jobfairService.list(new Page()));
        request.setAttribute("jobfairList",list);
        return "jobfair";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Jobfair Jobfair = jobfairService.selectByPrimaryKey(id);
        List<Jobfair> list = new ArrayList<>();
        list.add(Jobfair);
        List<VoJobfair> list1 = jobfairService.vo(list);
        request.setAttribute("jobfair",list1.get(0));
        return "jobfair_detail";
    }

}
