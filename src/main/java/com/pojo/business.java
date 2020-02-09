package com.pojo;

import java.io.Serializable;

public class business implements Serializable {

    private int num;
    private String platform;

    public business( int num, String platform) {
        super();
        this.num = num;
        this.platform = platform;
    }
    public String getPlatform() {
        return platform;
    }
    public void setPlatform(String platform) {
        this.platform = platform;
    }
    public business() {
        super();
    }
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }


}

