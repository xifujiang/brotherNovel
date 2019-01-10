package com.sif.service;

import com.sif.mapper.AuthornovelMapper;
import com.sif.pojo.Authornovel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthorNovelServiceImpl implements AuthorNovelService{
    @Autowired
    AuthornovelMapper authornovelMapper;

    public int updateAuthorNovel(Authornovel authornovel){
        return authornovelMapper.insertSelective(authornovel);
    }
}
