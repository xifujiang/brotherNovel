package com.sif.pojo;

import java.util.Date;

/**
 * @program: BrotherNovel
 * @description: 小说的详细描述
 * @author: xifujiang
 * @create: 2019-01-08 16:21
 **/
public class DetailNovel {
    private String nid;
    private String nname;
    private String nauthor;
    private Integer nstatic;
    private String tname;
    private String nlabel;
    private String nlogo;
    private String nintro;
    private Integer lastchapter;
    private Date ncreatetime;
    private String chaptername;
    private String clocation;
    private Date createtime;

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getNname() {
        return nname;
    }

    public void setNname(String nname) {
        this.nname = nname;
    }

    public String getNauthor() {
        return nauthor;
    }

    public void setNauthor(String nauthor) {
        this.nauthor = nauthor;
    }

    public Integer getNstatic() {
        return nstatic;
    }

    public void setNstatic(Integer nstatic) {
        this.nstatic = nstatic;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getNlabel() {
        return nlabel;
    }

    public void setNlabel(String nlabel) {
        this.nlabel = nlabel;
    }

    public String getNlogo() {
        return nlogo;
    }

    public void setNlogo(String nlogo) {
        this.nlogo = nlogo;
    }

    public String getNintro() {
        return nintro;
    }

    public void setNintro(String nintro) {
        this.nintro = nintro;
    }

    public Integer getLastchapter() {
        return lastchapter;
    }

    public void setLastchapter(Integer lastchapter) {
        this.lastchapter = lastchapter;
    }

    public Date getNcreatetime() {
        return ncreatetime;
    }

    public void setNcreatetime(Date ncreatetime) {
        this.ncreatetime = ncreatetime;
    }

    public String getChaptername() {
        return chaptername;
    }

    public void setChaptername(String chaptername) {
        this.chaptername = chaptername;
    }

    public String getClocation() {
        return clocation;
    }

    public void setClocation(String clocation) {
        this.clocation = clocation;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
    public String toString() {
        return "DetailNovel{" +
                "nid='" + nid + '\'' +
                ", nname='" + nname + '\'' +
                ", nauthor='" + nauthor + '\'' +
                ", nstatic=" + nstatic +
                ", tname='" + tname + '\'' +
                ", nlabel='" + nlabel + '\'' +
                ", nlogo='" + nlogo + '\'' +
                ", nintro='" + nintro + '\'' +
                ", lastchapter=" + lastchapter +
                ", ncreatetime=" + ncreatetime +
                ", chaptername='" + chaptername + '\'' +
                ", clocation='" + clocation + '\'' +
                ", createtime=" + createtime +
                '}';
    }
}
