package com.sif.service;

import com.sif.pojo.Chapter;

import java.util.List;

public interface ChapterService {
    void addChapter(Chapter chapter);

    void deleteAllChapterByNid(String nid);

    List<Chapter> selectChapterByNid(String nid);

    Chapter selectChapterByChapter(String nid, Integer lastchapter);
}
