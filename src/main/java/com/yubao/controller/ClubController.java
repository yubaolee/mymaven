package com.yubao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016-11-29.
 */
@Controller
@RequestMapping(value="/club")
public class ClubController {

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "clubindex";
    }
}
