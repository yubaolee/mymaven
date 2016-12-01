package com.yubao.service.Impl;

import com.util.MD5;
import com.yubao.dao.UserMapper;
import com.yubao.model.User;
import com.yubao.model.UserExample;
import com.yubao.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2016-11-30.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserMapper _mapper;
    public int countByExample(UserExample example) {
        return _mapper.countByExample(example);
    }

    public int deleteByExample(UserExample example) {
        return _mapper.deleteByExample(example);
    }

    public int deleteByPrimaryKey(String id) {
        return _mapper.deleteByPrimaryKey(id);
    }

    public int insert(User record) throws Exception {
        UserExample exp = new UserExample();
        UserExample.Criteria criteria = exp.createCriteria();
        criteria.andAccountEqualTo(record.getName());
        if(countByExample(exp) > 0)
            throw new Exception("账号已存在");

        return _mapper.insert(record);
    }

    public  User check(String account,String pwd) throws Exception {
        UserExample exp = new UserExample();
        UserExample.Criteria criteria = exp.createCriteria();
        criteria.andAccountEqualTo(account);

        List<User> user = selectByExample(exp);
        if(user.isEmpty())
            throw new Exception("用户不存在");

        String md5pwd = MD5.Encode(pwd);
        if(!user.get(0).getPwd().equals(md5pwd))
        {
            throw new Exception("密码错误");
        }
        return user.get(0);
    }

    public int insertSelective(User record) {
        return _mapper.insertSelective(record);
    }

    public List<User> selectByExample(UserExample example) {
        return _mapper.selectByExample(example);
    }

    public User selectByPrimaryKey(String id) {
        return _mapper.selectByPrimaryKey(id);
    }

    public int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example) {
        return _mapper.updateByExampleSelective(record, example);
    }

    public int updateByExample(@Param("record") User record, @Param("example") UserExample example) {
        return _mapper.updateByExample(record, example);
    }

    public int updateByPrimaryKeySelective(User record) {
        return _mapper.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(User record) {
        return _mapper.updateByPrimaryKey(record);
    }
}
