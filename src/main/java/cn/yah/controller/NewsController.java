package cn.yah.controller;

import cn.yah.po.News;
import cn.yah.po.Page;
import cn.yah.service.NewsService;
import cn.yah.vo.VoNews;
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
@RequestMapping(value = "/news",produces = {"application/json;charset=UTF-8"} )
public class NewsController {

    @Autowired
    NewsService newsService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoNews> list = newsService.vo(newsService.list(new Page()));
        request.setAttribute("newsList",list);
        return "news";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        News news = newsService.selectByPrimaryKey(id);
        List<News> list = new ArrayList<>();
        list.add(news);
        List<VoNews> list1 = newsService.vo(list);
        request.setAttribute("news",list1.get(0));
        return "news_detail";
    }

}
