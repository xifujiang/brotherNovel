package com.sif.service;

import com.sif.conversion.DateChange;
import com.sif.pojo.DetailNovel;
import com.sif.pojo.SearchNovel;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* @program: BrotherNovel
        * @description: solr关键字索引小说
        * @author: xifujiang
        * @create: 2019-01-08 19:22
        **/
 @Service
public class SearchNovelServiceImpl implements SearchNovelService{


    @Autowired
    private HttpSolrClient client;

    @Override
    public SearchNovel searchNovelList(String queryString, Integer page, Integer rows) {

        //创建查询对象
        SolrQuery query = new SolrQuery();
        //设置查询条件
        query.setQuery(queryString);
        //设置分页
        query.setStart((page - 1) * rows);
        query.setRows(rows);
        //设置默认搜素域
        query.set("df", "keywords");
        //设置高亮显示
        query.setHighlight(true);
        query.addHighlightField("nname");
        query.addHighlightField("nauthor");
        query.addHighlightField("tname");
        query.addHighlightField("nintro");
        query.setHighlightSimplePre("<em style=\"color:red\">");
        query.setHighlightSimplePost("</em>");
        //执行查询
        SearchNovel searchNovel = this.searchList(query);
        //计算查询结果总页数
        long recordCount = searchNovel.getRecordCount();
        long pageCount = recordCount / rows;
        if (recordCount % rows > 0) {
            pageCount++;
        }
        searchNovel.setPageCount(pageCount);
        searchNovel.setCurPage(page);

        return searchNovel;
    }

    public SearchNovel searchList(SolrQuery query){

        //返回值对象
        SearchNovel searchNovelResult = new SearchNovel();

        //根据查询条件查询索引库
        QueryResponse queryResponse = null;
        try {
            queryResponse = client.query(query);
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //取查询结果
        SolrDocumentList solrDocumentList = queryResponse.getResults();

        //取查询结果总数量
        searchNovelResult.setRecordCount(solrDocumentList.getNumFound());

        //小说列表
        List<DetailNovel> detailNovels =new ArrayList<>();
        //取高亮显示
        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
        //取小说列表
        for (SolrDocument solrDocument : solrDocumentList) {
            //创建一项目对象
            DetailNovel detailNovel = new DetailNovel();
            detailNovel.setNid((String) solrDocument.get("id"));
            //取书名高亮显示的结果
            List<String> list = highlighting.get(solrDocument.get("id")).get("nname");
            String nname = "";
            if (list != null && list.size()>0) {
                nname = list.get(0);
            } else {
                nname = (String) solrDocument.get("nname");
            }
            detailNovel.setNname(nname);

            //取作者高亮显示的结果
            list = highlighting.get(solrDocument.get("id")).get("nauthor");
            String nauthor = "";
            if (list != null && list.size()>0) {
                nauthor = list.get(0);
            } else {
                nauthor = (String) solrDocument.get("nauthor");
            }
            detailNovel.setNauthor(nauthor);

            //取小说类型高亮显示的结果
            list = highlighting.get(solrDocument.get("id")).get("tname");
            String tname = "";
            if (list != null && list.size()>0) {
                tname = list.get(0);
            } else {
                tname = (String) solrDocument.get("tname");
            }
            detailNovel.setTname(tname);

            //取小说简介高亮显示的结果
            list = highlighting.get(solrDocument.get("id")).get("nintro");
            String nintro = "";
            if (list != null && list.size()>0) {
                nintro = list.get(0);
            } else {
                nintro = (String) solrDocument.get("nintro");
            }
            detailNovel.setNintro(nintro);
            detailNovel.setNlabel((String) solrDocument.get("nlabel"));
            detailNovel.setNstatic((Integer) solrDocument.get("nstatic"));
            detailNovel.setNlogo((String) solrDocument.get("nlogo"));
            detailNovel.setChaptername((String) solrDocument.get("chaptername"));
            detailNovel.setLastchapter((Integer) solrDocument.get("lastchapter"));
            detailNovel.setClocation((String) solrDocument.get("clocation"));
            try {
                detailNovel.setNcreatetime(DateChange.stringToDate((String) solrDocument.get("ncreatetime")));
                if ((String) solrDocument.get("createtime") == null){
                    detailNovel.setCreatetime(null);
                }else{
                    detailNovel.setCreatetime(DateChange.stringToDate((String) solrDocument.get("createtime")));
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
            //添加的商品列表
            detailNovels.add(detailNovel);
        }
        searchNovelResult.setNovelList(detailNovels);
        return searchNovelResult;
    }

}
