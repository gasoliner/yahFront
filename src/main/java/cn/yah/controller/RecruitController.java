package cn.yah.controller;

import cn.yah.po.*;
import cn.yah.service.ApplyService;
import cn.yah.service.CategoryService;
import cn.yah.service.RecruitService;
import cn.yah.vo.VoRecruit;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping(value = "/recruit",produces = {"application/json;charset=UTF-8"} )
public class RecruitController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    RecruitService recruitService;

    @Autowired
    ApplyService applyService;

    @RequestMapping("/{id}")
    public String page(@PathVariable Integer id, HttpServletRequest request) {
        List<VoRecruit> list = null;
        String currentCategory = null;
        if (id == 0) {
            list = recruitService.vo(recruitService.list(new Page()));
            currentCategory = "全 部";
        } else {
            list = recruitService.vo(recruitService.listByCategory(id));
            currentCategory = categoryService.selectByPrimaryKey(id).getName();
        }
        List<Category> categoryList = categoryService.list(new Page());
        request.setAttribute("currentCategory",currentCategory);
        request.setAttribute("categoryList",categoryList);
        request.setAttribute("recruitList",list);

        return "recruit";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Recruit recruit = recruitService.selectByPrimaryKey(id);
        List<Recruit> list = new ArrayList<>();
        list.add(recruit);
        List<VoRecruit> list1 = recruitService.vo(list);
        request.setAttribute("recruit",list1.get(0));
        return "recruit_detail";
    }

    @RequestMapping("/submitResume/{id}")
    @ResponseBody
    public String submitResume(@PathVariable Integer id,HttpServletRequest request) {
        Apply apply = new Apply();
        apply.setMid(((Member)request.getSession().getAttribute("member")).getMid());
        apply.setRid(id);
        try {
            applyService.insert(apply);
            return JSON.toJSONString("投递成功");
        } catch (Exception e) {
            return JSON.toJSONString("系统出错，请稍后重试");
        }
    }


    @RequestMapping("/list")
    @ResponseBody
    public String list(Page page) {
        List<VoRecruit> list = recruitService.vo(recruitService.list(page));
        StringBuilder builder = new StringBuilder();
        for (VoRecruit voRecruit:
                list) {
            builder.append("<div class=\"el\">\n" +
                    "                <p class=\"t1 \">\n" +
                    "                    <span>\n" +
                    "                                <a target=\"_blank\" title=\"" + voRecruit.getName() + "\"\n" +
                    "                                   href=\"https://jobs.51job.com/sichuansheng/102361893.html?s=01&t=0\" onmousedown=\"\">\n" +
                    "                                    " + voRecruit.getName() + "                               </a>\n" +
                    "                            </span>\n" +
                    "                </p>\n" +
                    "                <span class=\"t2\"><a target=\"_blank\" title=\"" + voRecruit.getVoEid() + "\" href=\"https://jobs.51job.com/all/co3897961.html\">" + voRecruit.getVoEid() + "</a></span>\n" +
                    "                <span class=\"t3\">" + voRecruit.getAddr() + "</span>\n" +
                    "                <span class=\"t4\">" + voRecruit.getSalary() + "</span>\n" +
                    "                <span class=\"t5\">" + voRecruit.getPublishtime() + "</span>\n" +
                    "                <span class=\"t5\"><a href = \"#\" onclick=\"submitResume('" + voRecruit.getRid() + "')\">我要投递</a></span>\n" +
                    "            </div>");
        }
        return builder.toString();
    }
}
