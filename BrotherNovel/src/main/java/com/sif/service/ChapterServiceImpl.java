package com.sif.service;

import com.sif.mapper.ChapterMapper;
import com.sif.pojo.Chapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChapterServiceImpl implements ChapterService {
    @Autowired
    ChapterMapper chapterMapper;

    /**
     * @Description: 添加章节
     * @Param: [chapter]
     * @return: void
     * @Author: xifujiang
     * @Date: 2019/1/4
     */
    @Override
    public void addChapter(Chapter chapter) {
        chapterMapper.insert(chapter);
    }

    /**
     * @Description: 删除小说时删除所有的章节
     * @Param: [nid]
     * @return: void
     * @Author: xifujiang
     * @Date: 2019/1/4
     */
    @Override
    public void deleteAllChapterByNid(String nid) {
        chapterMapper.deleteAllChapterByNid(nid);
    }

    /**
     * @Description: 根据小说的id查找章节
     * @Param: [nid]
     * @return: java.util.List<com.sif.pojo.Chapter>
     * @Author: xifujiang
     * @Date: 2019/1/5
     */
    public List<Chapter> selectChapterByNid(String nid) {
        return chapterMapper.selectChapterByNid(nid);
    }


    /** 
    * @Description: 查询一本章节
    * @Param: [nid, lastchapter]
    * @return: com.sif.pojo.Chapter 
    * @Author: xifujiang
    * @Date: 2019/1/6 
    */ 
    @Override
    public Chapter selectChapterByChapter(String nid, Integer chapterid) {
        return chapterMapper.selectChapterByChapter(nid,chapterid);
    }

}
