package com.sif.service;

import com.sif.mapper.NovelMapper;
import com.sif.pojo.Novel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NovelServiceImpl implements NovelService{
    @Autowired
    NovelMapper novelMapper;
    /*
        新建小说
    */
    @Override
    public int updateNovel(Novel novel){
        return novelMapper.insertSelective(novel);
    }

    /*
        根据作者的名字查询小说
    */
    @Override
    public List<Novel> selectNovelsByAuthor(String username) {
        return novelMapper.selectNovelsByAuthor(username);
    }


    /*
    根据小说id更新小说
    */
    @Override
    public void updateNovelByNid(String nid) {
        novelMapper.updateNovelByNid(nid);
    }

    /*根据id删除小说*/
    @Override
    public void deleteCustomerById(String nid) {
        novelMapper.deleteByPrimaryKey(nid);
    }

    /*查找所有的小说*/
    @Override
    public List<Novel> selectAllBook(){
        return novelMapper.selectAllNovel();
    };

    /*根据小说的id搜索小说*/
    public Novel selectNovelByNid(String nid){
        return novelMapper.selectByPrimaryKey(nid);
    }
}
