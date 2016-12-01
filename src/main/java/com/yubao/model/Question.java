package com.yubao.model;

import java.util.Date;

public class Question {
    private String id;

    private String title;

    private String content;

    private int supportcnt;

    private int opposecnt;

    private int reward;

    private Date createdtime;

    private int state;

    private String userid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getSupportcnt() {
        return supportcnt;
    }

    public void setSupportcnt(int supportcnt) {
        this.supportcnt = supportcnt;
    }

    public int getOpposecnt() {
        return opposecnt;
    }

    public void setOpposecnt(int opposecnt) {
        this.opposecnt = opposecnt;
    }

    public int getReward() {
        return reward;
    }

    public void setReward(int reward) {
        this.reward = reward;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
}