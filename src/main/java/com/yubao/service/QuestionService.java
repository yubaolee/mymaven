package com.yubao.service;

import com.util.temp.PageObject;
import com.yubao.model.Question;

/**
 * Created by Administrator on 2016-12-01.
 */
public interface QuestionService {
    PageObject<Question> Get(String key, int index, int size);

    String add(Question question) throws Exception;

    Question Get(String id);
}
