package cn.yah.controller;

import cn.yah.po.Member;
import cn.yah.service.MemberService;
import cn.yah.util.PageUtil;
import com.alibaba.fastjson.JSON;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping(value = "/login",produces = {"application/json;charset=UTF-8"} )
public class LoginController {

    @Autowired
    MemberService memberService;


    @RequestMapping("/login")
    @ResponseBody
    public void login(String name, String password, HttpServletRequest request,HttpServletResponse response) throws IOException {
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(
                name,
                password
        );
        try {
            currentUser.login(token);
            Member member = memberService.selectByPrimaryKey(Integer.parseInt(name));
            request.getSession().setAttribute("member",member);
            response.sendRedirect("/index");
            return;
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("login_code","登录失败");
            response.sendRedirect("/login/login_ui");
            return;
        }
    }

    @RequestMapping("/registry")
    public String registry(Member member,String password2,@RequestParam("file")CommonsMultipartFile file, HttpServletRequest request) {
        try {
            member.setResume(PageUtil.uploadAnnex(request, file, "resume", member.getName()));
//            check
            if (!(password2 != null && member.getPassword() != null && password2.equals(member.getPassword()))) {
                throw new Exception();
            }
            int id = memberService.insert(member);
            System.out.println("新增id = " + id);
            request.setAttribute("new_id",id);
            return "registry_succ";
        } catch (Exception e) {
            return "registry_fail";
        }

    }

    @RequestMapping("/logout")
    public void logout(HttpServletRequest request,HttpServletResponse response) throws IOException {
        SecurityUtils.getSubject().logout();
        request.removeAttribute("member");
        response.sendRedirect("/");
        return;
    }

    @RequestMapping("/registry_ui")
    public String registry_ui() {
        return "registry";
    }

    @RequestMapping("/login_ui")
    public String login_ui() {
        return "login";
    }
}
