package com.biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mapper.IGameMapper;
import com.pojo.Admin;
import com.pojo.Game;
import com.pojo.PageBean;
import com.pojo.business;

@Service
@Transactional
public class GameBiz implements IGameBiz {
    @Autowired
    private IGameMapper dao;

    public IGameMapper getDao() {
        return dao;
    }

    public void setDao(IGameMapper dao) {
        this.dao = dao;
    }

    @Override
    public int save(Game g) {
        // TODO 自动生成的方法存根

        return dao.save(g);
    }

    @Override
    public int update(Game g) {
        // TODO 自动生成的方法存根
        System.out.println("111111111111111111"+g);
        return dao.update(g);
    }

    @Override
    public int delById(String gid) {
        // TODO 自动生成的方法存根
        return dao.delById(gid);
    }

    @Override
    public Game findById(String gid) {
        // TODO 自动生成的方法存根
        return dao.findById(gid);
    }

    @Override
    public List<Game> findAll() {
        // TODO 自动生成的方法存根
        return dao.findall();
    }

    @Override
    public List<business> doinit() {
        // TODO 自动生成的方法存根
        return dao.doinit();
    }

    @Override
    public List<Admin> doint() {
        // TODO 自动生成的方法存根
        return dao.doint();
    }

    @Override
    public List<Game> findPageAll(PageBean pb) {
        // TODO 自动生成的方法存根
        int page=(pb.getPage()-1)*pb.getRows();
        int rows=pb.getRows();
        return dao.findPageAll(page, rows);
    }

    @Override
    public int findMaxrows() {
        // TODO 自动生成的方法存根
        return dao.findMaxrows();
    }

}

