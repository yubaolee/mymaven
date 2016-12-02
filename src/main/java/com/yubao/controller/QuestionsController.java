package com.yubao.controller;

import com.util.Const;
import com.yubao.dao.UserMapper;
import com.yubao.model.Question;
import com.yubao.model.User;
import com.yubao.service.QuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.print.attribute.standard.RequestingUserName;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2016-11-29.
 */
@Controller
@RequestMapping(value="/questions")
public class QuestionsController extends BaseController {
    @Resource
    QuestionService _service;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "clubindex";
    }

    @ResponseBody
    @RequestMapping(value = "/get", method = RequestMethod.GET)
    public void get(HttpServletResponse out, String key, int index, int size) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        response.Status = true;
        response.Result = _service.Get(key, index, size);

        out.getWriter().print(gson.toJson(response));
    }

    @ResponseBody
    @RequestMapping(value="add",method = RequestMethod.POST)
    public void add(HttpServletResponse out, Question question) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        response.Status = true;
        response.Result = _service.add(question);

        out.getWriter().print(gson.toJson(response));
    }

}
