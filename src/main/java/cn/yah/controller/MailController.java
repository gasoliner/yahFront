package cn.yah.controller;

import cn.yah.po.Mail;
import cn.yah.po.Member;
import cn.yah.po.Page;
import cn.yah.service.MailService;
import cn.yah.vo.VoMail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping(value = "/mail",produces = {"application/json;charset=UTF-8"} )
public class MailController {

    @Autowired
    MailService mailService;


    @RequestMapping("/")
    public String page(HttpServletRequest request) {
        List<VoMail> list = mailService.vo(mailService.listByMid(((Member)request.getSession().getAttribute("member")).getMid()));
        request.setAttribute("mailList",list);
        return "mail";
    }

    @RequestMapping("/detail/{id}")
    public String detail(@PathVariable Integer id,HttpServletRequest request) {
        Mail mail = mailService.selectByPrimaryKey(id);
        List<Mail> list = new ArrayList<>();
        list.add(mail);
        List<VoMail> list1 = mailService.vo(list);
        request.setAttribute("mail",list1.get(0));
        return "mail_detail";
    }

}
