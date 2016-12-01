package com.yubao.controller;

import com.util.Const;
import com.util.MD5;
import com.yubao.model.User;
import com.yubao.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator on 2016-11-29.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

    @Resource
    UserService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/reg", method = RequestMethod.GET)
    public String reg() {
        return "reg";
    }

    @ResponseBody
    @RequestMapping(value = "/header", method = RequestMethod.GET)
    public void header(HttpServletRequest request, HttpServletResponse out) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        response.Status = false;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {

                if (cookie.getName().equals(Const.COOKIE_LOGIN_USER)) {
                    String id = cookie.getValue();
                    User user = service.selectByPrimaryKey(id);
                    response.Status = true;
                    response.Result = user;
                    break;
                }
            }
        }

        out.getWriter().print(gson.toJson(response));
    }

    @ResponseBody
    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public void addUser(HttpServletResponse out, String account, String pwd) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        try {

            User user = new User();
            user.setId(UUID.randomUUID().toString());
            user.setName(account);
            user.setPwd(MD5.Encode(pwd));
            user.setCreatetime(new Date());
            service.insert(user);
            response.Status = true;
        } catch (Exception e) {
            response.Status = false;
            response.Message = e.getMessage();
        }
        out.getWriter().print(gson.toJson(response));
    }

    @ResponseBody
    @RequestMapping(value = "/check", method = RequestMethod.POST)
    public void checkUser(HttpServletResponse out, String account, String pwd) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        try {
            User u = service.check(account, pwd);
            out.addCookie(new Cookie(Const.COOKIE_LOGIN_USER, u.getId()));
            response.Status = true;
        } catch (Exception e) {
            response.Status = false;
            response.Message = e.getMessage();
        }
        out.getWriter().print(gson.toJson(response));
    }
}
