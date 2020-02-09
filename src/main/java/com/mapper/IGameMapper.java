package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.pojo.Admin;
import com.pojo.Game;
import com.pojo.business;

@Mapper
public interface IGameMapper {
    //增加
    public int save(Game g);
    //修改
    public int update(Game g);
    //删除
    public int  delById(String gid);
    //查询单个
    public Game findById(String gid);
    //查询分页所有
    public List<Game> findall();
    public List<Game> findPageAll(@Param(value = "page") Integer page,@Param(value = "rows")Integer rows);
    public int findMaxrows();
    //游戏列表
    public List<business> doinit();
    //管理员
    public List<Admin> doint();

}
