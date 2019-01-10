package com.sif.controller;

import com.sif.file.FileOperation;
import com.sif.pojo.Chapter;
import com.sif.pojo.DetailNovel;
import com.sif.pojo.Novel;
import com.sif.service.ChapterService;
import com.sif.service.DetailNovelService;
import com.sif.service.NovelService;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class ChapterController {
    @Autowired
    NovelService novelServiceImpl;
    @Autowired
    ChapterService chapterServiceImpl;
    @Autowired
    DetailNovelService detailNovelServiceImpl;
    /** 
    * @Description: 提交到章节新建页面
    * @Param: [nid, lastchapter, map] 
    * @return: java.lang.String 
    * @Author: xifujiang
    * @Date: 2019/1/4 
    */ 
    @RequestMapping(value = "insertChapter")
    public String insertChapter(String nid,Integer lastchapter, Map<String,Object> map){
//        System.out.println("nid:"+nid +"lastchapter:"+lastchapter);
        map.put("nid",nid);
        map.put("lastchapter",lastchapter);
        return "insert-chapter";
    }

    /** 
    * @Description: 提交章节
    * @Param: [nid, lastchapter, chaptername, content] 
    * @return: java.lang.String 
    * @Author: xifujiang
    * @Date: 2019/1/4 
    */ 
    @RequestMapping(value = "submitChapter",method= RequestMethod.POST)
    @ResponseBody
    public Integer submitChapter(String nid,String chaptername,String content){

        /*novel表中的最新章节+1，更新数据库数据库*/
        novelServiceImpl.updateNovelByNid(nid);

        Novel novel= novelServiceImpl.selectNovelByNid(nid);
        Integer lastchapter = novel.getLastchapter();
        /*存放小说内容*/
        String novelId = nid.split("-")[0];
        String filePath ="D:\\2environment\\upload\\brotherNovel\\novel\\"+novelId+"\\"+lastchapter+".txt";
        File file = new File(filePath);

        try {
            FileOperation.createFile(file);
            FileOperation.writeTxtFile(content,file);
        } catch (Exception e) {
            e.printStackTrace();
        }

        /*添加内容到章节表*/
        Chapter chapter = new Chapter();
        chapter.setNid(nid);
        chapter.setChapterid(lastchapter);
        chapter.setChaptername(chaptername);
        chapter.setClocation(novelId+"/"+lastchapter+".txt");
        chapter.setCreatetime(new Date());
        /*更新章节表*/
        chapterServiceImpl.addChapter(chapter);

        //更新所有内容到solr
        try {
            List<DetailNovel> detailNovels = detailNovelServiceImpl.selectDetailNovel();
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return lastchapter;
    }

    /** 
    * @Description:  文章页面
    * @Param: [attr] 
    * @return: java.lang.String 
    * @Author: xifujiang
    * @Date: 2019/1/4 
    */ 
    @RequestMapping(value="content")
    public String content(String nid,Integer chapterid,Map<String,Object> map){
        //按照小说id查找该小说
        Novel novel = novelServiceImpl.selectNovelByNid(nid);

        //按照小说id和cid查找章节
        Chapter chapter = chapterServiceImpl.selectChapterByChapter(nid,chapterid);
//        System.out.println(chapter.toString());
//        System.out.println(novel.toString());
        map.put("novel",novel);
        map.put("chapter",chapter);
        return "content";
    }

    @RequestMapping(value="judgeCatalog")
    @ResponseBody
    public String judgeCatalog(String nid,Integer chapterid){

        //按照小说id查找该小说
        Novel novel = novelServiceImpl.selectNovelByNid(nid);
//        System.out.println(chapterid+"    "+novel.getLastchapter());
        if(chapterid<=0) {
             return "noSmaller";
        } else if(chapterid>novel.getLastchapter()){
            return "noBigger";
        }
        return "turn";
    }

    /** 
    * @Description:  显示目录
    * @Param: [nid, map] 
    * @return: java.lang.String 
    * @Author: xifujiang
    * @Date: 2019/1/5 
    */ 
    @RequestMapping(value="openCatalog",method= RequestMethod.GET)
    public String openCatalog(String nid,Map<String,Object> map){
//        System.out.println(nid);
        Novel novel = novelServiceImpl.selectNovelByNid(nid);
        List<Chapter> chapterList = chapterServiceImpl.selectChapterByNid(nid);
//        System.out.println(novel.toString());
        map.put("novel",novel);
        map.put("chapterList",chapterList);
        return "catalog";
    }

}
