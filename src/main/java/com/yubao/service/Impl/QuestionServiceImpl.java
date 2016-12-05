package com.yubao.service.Impl;

import com.util.temp.PageObject;
import com.util.temp.QuestionViewModel;
import com.yubao.dao.AnswerMapper;
import com.yubao.dao.QuestionMapper;
import com.yubao.dao.UserMapper;
import com.yubao.model.Question;
import com.yubao.model.QuestionExample;
import com.yubao.model.User;
import com.yubao.service.LoginService;
import com.yubao.service.QuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2016-12-01.
 */
@Service
public class QuestionServiceImpl implements QuestionService {

    @Resource
    QuestionMapper _mapper;

    @Resource
    LoginService loginService;

    @Resource
    AnswerMapper _answerMapper;
    @Resource
    UserMapper _userMapper;

    public PageObject<QuestionViewModel> Get(String key, int index, int size) {
        if(index == 0) index = 1;
        if(size ==0) size = 10;

        QuestionExample exp = new QuestionExample();


        if(key != null && !key.equals(""))
        {
            QuestionExample.Criteria criteria = exp.createCriteria();
            criteria.andTitleLike(key);
        }

        PageObject<QuestionViewModel> obj = new PageObject<QuestionViewModel>();
        obj.size = size;
        obj.index = index;
        obj.setTotal(_mapper.countByExample(exp));

        int startindex = (index-1)*size;
        exp.setOffset(startindex);
        exp.setLimit(size);


        obj.objects =_mapper.getQuestionVMs(exp);

        return obj;
    }

    public String add(Question question) throws Exception {
        User user = loginService.get();
        if(user == null){
            throw new Exception("请先登录");
        }
        String id = UUID.randomUUID().toString();
        question.setUserid(user.getId());
        question.setTime(new Date());
        question.setId(id);
        _mapper.insertSelective(question);
        return id;
    }

    public QuestionViewModel Get(String id) {
        QuestionViewModel q = _mapper.getQuestionVM(id);
        q.answers = _answerMapper.getAnswerVMs(q.getId());
        return q;
    }
}
