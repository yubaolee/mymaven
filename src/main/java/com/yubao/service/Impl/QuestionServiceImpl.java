package com.yubao.service.Impl;

import com.util.temp.PageObject;
import com.util.temp.QuestionViewModel;
import com.yubao.dao.AnswerMapper;
import com.yubao.dao.QuestionMapper;
import com.yubao.dao.UserMapper;
import com.yubao.model.Answer;
import com.yubao.model.Question;
import com.yubao.model.QuestionExample;
import com.yubao.model.User;
import com.yubao.service.LoginService;
import com.yubao.service.QuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
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
        exp.setOrderByClause("time desc");

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
        User user = checkLogin();
        String id = UUID.randomUUID().toString();
        question.setUserid(user.getId());
        question.setTime(new Date());
        question.setId(id);
        _mapper.insertSelective(question);
        return id;
    }

    public void del(String id) throws Exception {
        User user = checkLogin();
        if(user.getAuth() != 1)
        {
            throw new Exception("哇偶！快联系站长删除");
        }

        _mapper.deleteByPrimaryKey(id);
    }

    public void set(String id, String field, int rank) throws Exception {
        User user = checkLogin();
        if(user.getAuth() != 1 && user.getAuth() != 2)
        {
            throw new Exception("哇偶！这是站长那帮人干的事");
        }

        QuestionExample exp = new QuestionExample();
        QuestionExample.Criteria criteria = exp.createCriteria();
        criteria.andIdEqualTo(id);

        Question question = _mapper.selectByPrimaryKey(id);

        if(field.equals("stick"))
        {
            question.setStick(rank);
        }
        else if(field.equals("status"))
        {
            question.setStatus(rank);
        }
        _mapper.updateByExampleSelective(question, exp);

    }

    public void delAnswer(String id) throws Exception {
        User user = checkLogin();
        if(user.getAuth() != 1)
        {
            throw new Exception("哇偶！快联系站长删除");
        }

        _answerMapper.deleteByPrimaryKey(id);
    }

    public void accept(String id) throws Exception {
        User user = checkLogin();
        Answer answer = _answerMapper.selectByPrimaryKey(id);

        if(user.getAuth() != 1 &&user.getAuth()!= 2 && answer.getUserid() == user.getId() )
        {
            throw new Exception("哇偶！你无权干涉这个问题");
        }

        Question question = _mapper.selectByPrimaryKey(answer.getAnswerto());
        question.setAccept(answer.getId());

        _mapper.updateByPrimaryKey(question);
    }

    public String addAnswer(String jid, String content) throws Exception {
        User user = checkLogin();
        String id = UUID.randomUUID().toString();
        Answer answer = new Answer();
        answer.setId(id);
        answer.setUserid(user.getId());
        answer.setContent(content);
        answer.setAnswerto(jid);
        answer.setTime(new Date());
        _answerMapper.insertSelective(answer);

        user.setAnswercnt(user.getAnswercnt() + 1);
        _userMapper.updateByPrimaryKey(user);

        addCommontCnt(jid);
        return id;

    }



    public QuestionViewModel Get(String id) {
        QuestionViewModel q = _mapper.getQuestionVM(id);
        q.answers = _answerMapper.getAnswerVMs(q.getId());
        addHitCnt(id);
        return q;
    }




    private User checkLogin() throws Exception {
        User user = loginService.get();
        if(user == null){
            throw new Exception("请先登录");
        }
        return user;
    }

    private void addCommontCnt(String id){
        QuestionExample exp = new QuestionExample();
        QuestionExample.Criteria criteria = exp.createCriteria();
        criteria.andIdEqualTo(id);

        Question question = _mapper.selectByPrimaryKey(id);
        question.setComment(question.getComment() + 1);
        _mapper.updateByExampleSelective(question, exp);
    }

    private void addHitCnt(String id){
        QuestionExample exp = new QuestionExample();
        QuestionExample.Criteria criteria = exp.createCriteria();
        criteria.andIdEqualTo(id);

        Question question = _mapper.selectByPrimaryKey(id);
        question.setHits(question.getHits() + 1);
        _mapper.updateByExampleSelective(question, exp);
    }
}
