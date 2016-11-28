package com.yubao.controller;

import com.yubao.service.SysconfService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

/**
 * 主控制器
 * Created by Administrator on 2016-11-17.
 */
@Controller
@RequestMapping(value="/Main")
public class MainController {

    @Resource
    SysconfService _service;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }


    @RequestMapping(value = "/getmodel", method = RequestMethod.GET)
    public ModelAndView GetWithModel() {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("index", "yubao");
        return modelAndView;
    }

    /**
     * 直接返回string
     * @param out 输出流
     */
    @ResponseBody
    @RequestMapping(value="/getversion", method = RequestMethod.GET)
    public void Get(PrintWriter out) throws IOException {
        out.write(_service.getVersion());
    }
}