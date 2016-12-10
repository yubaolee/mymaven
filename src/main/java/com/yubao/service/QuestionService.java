package com.yubao.service;

import com.util.temp.PageObject;
import com.util.temp.QuestionViewModel;
import com.yubao.model.Question;

import java.util.List;

/**
 * Created by Administrator on 2016-12-01.
 */
public interface QuestionService {

    PageObject<QuestionViewModel> Get(String key, int index, int size);

    String add(Question question) throws Exception;
    String addAnswer(String jid, String content) throws Exception;

    QuestionViewModel Get(String id);
}
