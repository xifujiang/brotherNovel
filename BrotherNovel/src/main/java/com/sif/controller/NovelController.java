package com.sif.controller;

import com.sif.pojo.Novel;
import com.sif.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class NovelController {
    @Autowired
    UserService userServiceImpl;
    @Autowired
    NovelService novelServiceImpl;
    @Autowired
    AuthorNovelService authorNovelServiceImpl;
    @Autowired
    TypeService typeServiceImpl;
    @Autowired
    ChapterService chapterServiceImpl;
    @Autowired
    DetailNovelService detailNovelServiceImpl;

    /** 
    * @Description: 小说界面
    * @Param: [httpSession] 
    * @return: java.lang.String 
    * @Author: xifujiang
    * @Date: 2019/1/4 
    */ 
    @RequestMapping(value = "index")
    public String novel(){
        return "index";
    }

    @RequestMapping(value = "main")
    String model(HttpSession httpSession, Map<String,Object> map){

        List<Novel> allNovel= novelServiceImpl.selectAllBook();

        map.put("allNovel",allNovel);
        return "main";
    }


    /** 
    * @Description:  个人中心
    * @Param: [] 
    * @return: java.lang.String 
    * @Author: xifujiang
    * @Date: 2019/1/4 
    */ 
    @RequestMapping(value = "personIndex")
    public String personIndex(){
        return "person-index";
    }

    @RequestMapping(value = "personMain")
    public String personMain(){
        return "person-main";
    }


}
