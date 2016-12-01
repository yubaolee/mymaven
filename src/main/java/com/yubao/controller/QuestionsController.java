package com.yubao.controller;

import com.yubao.dao.UserMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2016-11-29.
 */
@Controller
@RequestMapping(value="/questions")
public class QuestionsController {
    @Resource
    UserMapper _usermapper;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "clubindex";
    }

}
