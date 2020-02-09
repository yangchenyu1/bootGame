package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.biz.IGameBiz;
import com.pojo.PageBean;
import com.pojo.business;
import com.pojo.Admin;
import com.pojo.Game;
@Controller
public class GameController implements IGameController {
    @Autowired
    private IGameBiz biz;

    public IGameBiz getBiz() {
        return biz;
    }

    public void setBiz(IGameBiz biz) {
        this.biz = biz;
    }

    @Override
    @RequestMapping(value="save_Game.do")
    public String save(HttpServletRequest request, HttpServletResponse response, Game g) {
        // TODO 自动生成的方法存根


        int flag=biz.save(g);

        if(flag>0){
            return "redirect:findPageAll_Game.do";
        }
        return "redirect:exit.jsp";
    }

    @Override
    @RequestMapping(value="update_Game.do")//改
    public String update(HttpServletRequest request, HttpServletResponse response, Game g) {
        // TODO 自动生成的方法存根
        int flag=biz.update(g);
        if(flag>0){
            System.out.println("123456789");
            return "redirect:findAll_Game.do";
        }
        return "redirect:exit.jsp";
    }

    @Override
    @RequestMapping(value="delById_Game.do")//有分页的list页面 展示 删除
    public String delById(HttpServletRequest request, HttpServletResponse response, String gid) {
        int flag=biz.delById(gid);
        if(flag>0){
            return "redirect:findPageAll_Game.do";
        }
        return "redirect:exit.jsp";
    }

    @Override
    @RequestMapping(value="AdelById_Game.do")//管理员的list2页面 展示 删除
    public String AdelById(HttpServletRequest request, HttpServletResponse response, String gid) {
        int flag=biz.delById(gid);
        if(flag>0){
            return "redirect:findAll_Game.do";
        }
        return "redirect:exit.jsp";
    }

    @Override
    @RequestMapping(value="findById_Game.do")//查询单个
    public String findById(HttpServletRequest request, HttpServletResponse response, String gid) {
        Game lis=biz.findById(gid);
        if(lis!=null){
            request.setAttribute("lis", lis);
            return "find2.jsp";
        }
        else{
            return "exit.jsp";
        }
    }

    @Override
    @RequestMapping(value="UfindById_Game.do")//修改专用
    public String UfindById(HttpServletRequest request, HttpServletResponse response, String gid) {

        Game uls=biz.findById(gid);
        request.setAttribute("uls", uls);
        return "update.jsp";
    }

    @Override
    @RequestMapping(value="findPageAll_Game.do")//查询所有 有分页
    public String findPageAll(HttpServletRequest request, HttpServletResponse response, Integer page, Integer rows) {
        HttpSession session=request.getSession();
        PageBean pb=(PageBean)session.getAttribute("pb");
        pb=pb==null?new PageBean():pb;
        page=page==null||page<1?pb.getPage():page;
        rows=rows==null||rows<1?pb.getRows():rows;
        int maxrows=biz.findMaxrows();
        int maxpage=1;
        if(maxrows>0){
            maxpage=maxrows%rows==0?maxrows/rows:maxrows/rows+1;
        }
        if(page>maxpage)page=maxpage;
        pb.setPage(page);
        pb.setRows(rows);
        List<Game> lsst=biz.findPageAll(pb);
        pb.setMaxpage(maxpage);
        pb.setPagelist(lsst);
        session.setAttribute("pb", pb);
        return "redirect:list.jsp";
    }

    @Override
    @RequestMapping(value="findAll_Game.do")
    public String findAll(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session=request.getSession();
        List<Game> gam=biz.findAll();
        session.setAttribute("gam", gam);
        return "redirect:list2.jsp";
    }

    @Override
    @RequestMapping(value="doinit_Game.do")
    public String doinit(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session=request.getSession();
        List<business> list=biz.doinit();
        session.setAttribute("list", list);
        return "redirect:add.jsp";

    }

    @Override
    @RequestMapping(value="doint_Game.do")
    public String doint(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session=request.getSession();
        List<Admin> lit=biz.doint();
        session.setAttribute("lit", lit);
        return "redirect:transit.jsp";
    }

    @Override
    @RequestMapping(value="exit_Game.do")//退出
    public String exit(HttpServletRequest request, HttpServletResponse response) {
        // TODO 自动生成的方法存根
        return "exit.jsp";
    }

}

