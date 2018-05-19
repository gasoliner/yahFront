package cn.yah.controller;

import cn.yah.po.Page;
import cn.yah.service.EnterpriseService;
import cn.yah.service.JobfairService;
import cn.yah.service.NewsService;
import cn.yah.vo.VoEnterprise;
import cn.yah.vo.VoJobfair;
import cn.yah.vo.VoNews;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class UIController {

    @Autowired
    JobfairService jobfairService;

    @Autowired
    EnterpriseService enterpriseService;

    @Autowired
    NewsService newsService;

    @RequestMapping("/")
    public String showIndex(HttpServletRequest request){
        prepareContent(request);
        return "index";
    }

    @RequestMapping("/index")
    public String showIndex2(HttpServletRequest request){
        prepareContent(request);
        return "index";
    }

    private void prepareContent(HttpServletRequest request) {
        List<VoJobfair> list = jobfairService.vo(jobfairService.list(new Page()));
        request.setAttribute("jobfairList",list);
        List<VoEnterprise> list1 = enterpriseService.vo(enterpriseService.list(new Page()));
        request.setAttribute("enterpriseList",list1);
        List<VoNews> list2 = newsService.vo(newsService.list(new Page()));
        request.setAttribute("newsList",list2);
    }


}
