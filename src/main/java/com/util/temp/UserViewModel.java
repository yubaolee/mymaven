package com.util.temp;

import com.agapple.mapping.BeanCopy;
import com.agapple.mapping.BeanMapping;
import com.yubao.model.User;

/**
 * Created by Administrator on 2016-12-05.
 */
public class UserViewModel {
    static public UserViewModel From(User user){
        BeanCopy mapping = BeanCopy.create(User.class, UserViewModel.class);
        UserViewModel vm = new UserViewModel();
        mapping.copy(user, vm);
        return vm;
    }

    private String id;

    private String name;

    /**
     * VIP等级
     */
    private Integer rmb;

    private Integer questioncnt;

    private Integer answercnt;

    private String pic;

    /**
     * 用户权限
     */
    private Integer auth;

    /**
     * 经验值
     */
    private Integer experience;

    public Integer getQuestioncnt() {
        return questioncnt;
    }

    public void setQuestioncnt(Integer questioncnt) {
        this.questioncnt = questioncnt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getRmb() {
        return rmb;
    }

    public void setRmb(Integer rmb) {
        this.rmb = rmb;
    }

    public Integer getAnswercnt() {
        return answercnt;
    }

    public void setAnswercnt(Integer answercnt) {
        this.answercnt = answercnt;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getAuth() {
        return auth;
    }

    public void setAuth(Integer auth) {
        this.auth = auth;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }
}

