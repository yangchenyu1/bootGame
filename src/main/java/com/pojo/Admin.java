package com.pojo;

import java.io.Serializable;

public class Admin implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String admin;
    private String password;
    public String getAdmin() {
        return admin;
    }
    public void setAdmin(String admin) {
        this.admin = admin;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String toString() {
        return "Admin [admin=" + admin + ", password=" + password + "]";
    }
    public Admin(String admin, String password) {
        super();
        this.admin = admin;
        this.password = password;
    }


}


