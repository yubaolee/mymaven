package com.yubao.controller;

import com.yubao.model.Question;
import com.yubao.service.LoginService;
import com.yubao.service.QuestionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
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

    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String detail() {
        return "questions/detail";
    }

    @ResponseBody
    @RequestMapping(value = "/getone", method = RequestMethod.GET)
    public void getone(HttpServletResponse out, String id) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        response.Status = true;
        response.Result = _service.Get(id);
        out.getWriter().print(gson.toJson(response));
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "questions/add";
    }

    @ResponseBody
    @RequestMapping(value="add",method = RequestMethod.POST)
    public void add(HttpServletResponse out, Question question) throws IOException {
        out.setContentType("text/html; charset=utf-8");
        try {
            _service.add(question);
            response.Status = true;
            response.Result = "/club/index";
            response.Message = "操作成功";
        }catch (Exception e)
        {
            response.Status = false;
            response.Message = e.getMessage();
        }

        out.getWriter().print(gson.toJson(response));
    }

}
