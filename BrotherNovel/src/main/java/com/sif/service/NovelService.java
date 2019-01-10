package com.sif.service;

import com.sif.pojo.Novel;

import java.util.List;

public interface NovelService {
    /*
        新建小说
    */
    public int updateNovel(Novel novel);

    /*
        根据作者的名字查询小说
     */
    List<Novel> selectNovelsByAuthor(String username);

    /*
        根据小说id更新小说
     */
    void updateNovelByNid(String nid);

    void deleteCustomerById(String nid);

    /*查找所有的小说*/
    List<Novel> selectAllBook();

    /*根据小说的id搜索小说*/
    Novel selectNovelByNid(String nid);
}
