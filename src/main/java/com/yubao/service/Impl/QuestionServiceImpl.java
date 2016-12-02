package com.yubao.service.Impl;

import com.util.temp.PageObject;
import com.yubao.dao.QuestionMapper;
import com.yubao.model.Question;
import com.yubao.model.QuestionExample;
import com.yubao.service.QuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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

    public PageObject<Question> Get(String key, int index, int size) {
        if(index == 0) index = 1;
        if(size ==0) size = 10;

        QuestionExample exp = new QuestionExample();


        if(key != null && !key.equals(""))
        {
            QuestionExample.Criteria criteria = exp.createCriteria();
            criteria.andTitleLike(key);
        }

        PageObject<Question> obj = new PageObject<Question>();
        obj.size = size;
        obj.index = index;
        obj.setTotal(_mapper.countByExample(exp));

        int startindex = (index-1)*size;
        exp.setOffset(startindex);
        exp.setLimit(size);
        obj.objects = _mapper.selectByExample(exp);

        return obj;
    }

    public String add(Question question) {
        String id = UUID.randomUUID().toString();
        question.setCreatedtime(new Date());
        question.setId(id);
        _mapper.insertSelective(question);
        return id;
    }
}
