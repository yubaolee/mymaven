package com.yubao.model;

import java.util.Date;

public class Post {
    private String id;

    private String content;

    private int supportcnt;

    private int opposecnt;

    private String commentto;

    private Date createdtime;

    private String userid;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getCommentto() {
        return commentto;
    }

    public void setCommentto(String commentto) {
        this.commentto = commentto;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }
}