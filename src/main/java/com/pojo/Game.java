package com.pojo;

import java.io.Serializable;


public class Game implements Serializable {
    private String gid;
    private String gname;
    private String sex;
    private String gtime;
    private String phone;
    private String qq;
    private String id;
    private String money;
    private String platform;





    public Game() {
        super();
        // TODO 自动生成的构造函数存根
    }
    //增
    public Game(String gname, String sex, String gtime, String phone, String qq, String id, String money) {
        super();
        this.gname = gname;
        this.sex = sex;
        this.gtime = gtime;
        this.phone = phone;
        this.qq = qq;
        this.id = id;
        this.money = money;
    }
    public Game(String gid,String gname, String sex, String gtime, String phone, String qq, String id, String money) {
        super();
        this.gid = gid;
        this.gname = gname;
        this.sex = sex;
        this.gtime = gtime;
        this.phone = phone;
        this.qq = qq;
        this.id = id;
        this.money = money;
    }


    //全部
    public Game(String gid, String gname, String sex, String gtime, String phone, String qq, String id,
                String money, String platform) {
        super();
        this.gid = gid;
        this.gname = gname;
        this.sex = sex;
        this.gtime = gtime;
        this.phone = phone;
        this.qq = qq;
        this.id = id;
        this.money = money;
        this.platform = platform;
    }


    public String getGid() {
        return gid;
    }
    public void setGid(String gid) {
        this.gid = gid;
    }
    public String getGname() {
        return gname;
    }
    public void setGname(String gname) {
        this.gname = gname;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public String getGtime() {
        return gtime;
    }
    public void setGtime(String gtime) {
        this.gtime = gtime;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getQq() {
        return qq;
    }
    public void setQq(String qq) {
        this.qq = qq;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getMoney() {
        return money;
    }
    public void setMoney(String money) {
        this.money = money;
    }
    public String getPlatform() {
        return platform;
    }
    public void setPlatform(String platform) {
        this.platform = platform;
    }
    @Override
    public String toString() {
        return "Game [gid=" + gid + ", gname=" + gname + ", sex=" + sex  + ", gtime=" + gtime
                + ", phone=" + phone + ", qq=" + qq + ", id=" + id + ", money=" + money + ", platform=" + platform
                + "]";
    }







}

