package com.biz;

import java.util.List;

import com.pojo.PageBean;
import com.pojo.Admin;
import com.pojo.Game;
import com.pojo.business;

public interface IGameBiz {
    public int save(Game g);
    public int  update(Game g);
    public int delById(String gid);
    public Game findById(String gid);
    public List<Game> findAll();
    public List<business> doinit();
    public List<Admin> doint();
    /**
     * 分页查询的方法
     */
    public List<Game> findPageAll(PageBean pb);

    /**
     * 获取总页数
     */
    public int findMaxrows();

}

