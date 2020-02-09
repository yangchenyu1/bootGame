package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.Game;

public interface IGameController {
    public String save(HttpServletRequest request,HttpServletResponse response,Game g);
    public String update(HttpServletRequest request,HttpServletResponse response,Game g);
    public String delById(HttpServletRequest request,HttpServletResponse response,String gid);
    public String AdelById(HttpServletRequest request,HttpServletResponse response,String gid);
    public String exit(HttpServletRequest request,HttpServletResponse response);
    public String findById(HttpServletRequest request,HttpServletResponse response,String gid);
    public String UfindById(HttpServletRequest request,HttpServletResponse response,String gid);
    public String findPageAll(HttpServletRequest request,HttpServletResponse response,Integer page,Integer rows);
    public String findAll(HttpServletRequest request,HttpServletResponse response);
    public String doinit(HttpServletRequest request,HttpServletResponse response);
    public String doint(HttpServletRequest request,HttpServletResponse response);



}

