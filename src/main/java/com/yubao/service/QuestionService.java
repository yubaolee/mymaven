package com.yubao.service;

import com.util.temp.PageObject;
import com.util.temp.QuestionViewModel;
import com.yubao.model.Question;

/**
 * Created by Administrator on 2016-12-01.
 */
public interface QuestionService {

    PageObject<QuestionViewModel> Get(String key, int index, int size);

    String add(Question question) throws Exception;
    String addAnswer(String jid, String content) throws Exception;

    QuestionViewModel Get(String id);

    void del(String id) throws Exception;

    void set(String id, String field, int rank) throws Exception;

    void delAnswer(String id) throws Exception;

    void accept(String id) throws Exception;
}
