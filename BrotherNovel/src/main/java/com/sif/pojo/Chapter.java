package com.sif.pojo;

import java.util.Date;

public class Chapter {
    private Integer cid;

    private String nid;

    private Integer chapterid;

    private String chaptername;

    private String clocation;

    private Date createtime;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid == null ? null : nid.trim();
    }

    public Integer getChapterid() {
        return chapterid;
    }

    public void setChapterid(Integer chapterid) {
        this.chapterid = chapterid;
    }

    public String getChaptername() {
        return chaptername;
    }

    public void setChaptername(String chaptername) {
        this.chaptername = chaptername == null ? null : chaptername.trim();
    }

    public String getClocation() {
        return clocation;
    }

    public void setClocation(String clocation) {
        this.clocation = clocation == null ? null : clocation.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
    public String toString() {
        return "Chapter{" +
                "cid=" + cid +
                ", nid='" + nid + '\'' +
                ", chapterid=" + chapterid +
                ", chaptername='" + chaptername + '\'' +
                ", clocation='" + clocation + '\'' +
                ", createtime=" + createtime +
                '}';
    }
}