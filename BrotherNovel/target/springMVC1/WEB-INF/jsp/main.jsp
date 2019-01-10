<%--
  Created by IntelliJ IDEA.
  User: 22969
  Date: 2019/1/8
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
    <script src="Bootstrap/js/bootstrap.js"></script>
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/novel.css"/>
</head>
<body>
<!--中部-->
<div id="novel_center">

    <div class="row top_content">
        <div class="col-sm-3 ancient_rank">
            <!--左边-->
            <div class="t_l_box ">
                <h3 class="novel_type">近代现代</h3>
                <ul class="ul_list n_box">
                    <%
                        int i = 0;
                    %>
                    <c:forEach items="${allNovel}" var="novel" varStatus="status">
                        <c:if test="${novel.nclass eq 0}">
                            <%
                                i = i + 1;
                            %>
                            <li class="card-item">
                                <span class="digital_rank "><%=i%></span>
                                <a href="openCatalog?nid=${novel.nid}" class="novel_name">${novel.nname}</a>
                                <a href="solr/openAuthor?nauthor=${novel.nauthor}" class="author_name" target="iframe_a">${novel.nauthor}</a>
                            </li>
                        </c:if>
                        <c:if test="<%=i==10%>">
                            <c:set var="exitId" value="0"></c:set>
                        </c:if>
                        <% if(i == 10) %>
                    </c:forEach>
                </ul>
                <a class="more" href="solr/novelList?queryString=近代现代">MORE</a>
            </div>
        </div>
        <div class="t_centent col-sm-6">
            <!--中间-->
            <div class="t_c_box row">
                <div class="carousel slide t_new_img" id="myCarousel">
                    <!--滑动图片！-->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/novel-img/top1.jpg" alt="First slide">
                        </div>
                        <div class="item">
                            <img src="img/novel-img/top2.jpg" alt="Second slide">
                        </div>
                        <div class="item">
                            <img src="img/novel-img/top3.jpg" alt="Third slide">
                        </div>
                        <div class="item">
                            <img src="img/novel-img/top4.jpg" alt="Forth slide">
                        </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" style="background: darkgray; opacity: 0.1;">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" style="background: darkgray; opacity: 0.1;">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="t_hot_novel row col-sm-12">
                <div class="b_top_box">
                    <h3 class="novel_type">本周强推</h3>
                    <a class="more" href="# ">MORE</a>
                </div>
                <div class="ul_list">
                    <ul>
                        <li>
                            <a href="#" class="novel_name">[青春校园] 红五届</a>
                            <a href="#" class="author_name">舍木氓生</a>
                            <p>颜值红遍五届，喜欢绵延一生。</p>
                        </li>
                        <li>
                            <a href="#" class="novel_name">[青春校园] 青川</a>
                            <a href="#" class="author_name">猫大夫</a>
                            <p>直男大兄弟许蕴喆的直角转弯。</p>
                        </li>
                        <li>
                            <a href="#" class="novel_name">[宫廷斗争] 且共</a>
                            <a href="#" class="author_name">薛直</a>
                            <p>天下倾颓我亦不顾，唯与你且共沉沦。</p>
                        </li>
                        <li>
                            <a href="#" class="novel_name">[豪门恩怨] 不良的博弈</a>
                            <a href="#" class="author_name">尾文字鱼</a>
                            <p>一场博弈只因报复而起，是谁先输掉真心？</p>
                        </li>
                        <li>
                            <a href="#" class="novel_name">[都市爱情] 男主的无用超能力</a>
                            <a href="#" class="author_name">数辑算法</a>
                            <p>没有卵用超能力男主的霸道总裁副本。</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="morden_rank col-sm-3">
            <!--右边-->
            <div class="t_r_box">
                <h3 class="novel_type ">古代架空</h3>
                <ul class="ul_list n_box">
                    <%
                        i = 0;
                    %>
                    <c:forEach items="${allNovel}" var="novel" varStatus="status">
                        <c:if test="${novel.nclass eq 1}">
                            <%
                                i = i + 1;
                            %>
                            <li class="card-item">
                                <span class="digital_rank "><%=i%></span>
                                <a href="openCatalog?nid=${novel.nid}" class="novel_name ">${novel.nname}</a>
                                <a href="solr/openAuthor?nauthor=${novel.nauthor}" class="author_name" target="iframe_a">${novel.nauthor}</a>
                            </li>
                        </c:if>
                        <c:if test="<%=i==10%>">
                            <c:set var="exitId" value="0"></c:set>
                        </c:if>
                        <% if(i == 10) %>
                    </c:forEach>
                </ul>
                <a class="more" href="solr/novelList?queryString=古代架空 ">MORE</a>
            </div>
        </div>
    </div>
    <div class="center_content">
        <h3 class="novel_type" >本周精选</h3>
        <ul data-mcs-theme="light-3">
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel1.jpg"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel2.jpg"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel3.jpg"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel4.png"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel5.png"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel6.jpg"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
            <li class="ws_li">
                <a href="#">
                    <a href="#"><img alt="" src="img/novel-img/novel7.jpg"/></a>
                    <a href="#">总裁离魂小记</a>
                </a>
            </li>
        </ul>
    </div>
    <div class="button_content row">
        <div class="b_new_book col-sm-3">
            <div class="b_n_box ">
                <h3 class="novel_type ">最新小说</h3>
                <ul class="ul_list">
                    <li class="card-item">
                        <span class="digital_rank ">1</span>
                        <a href="# " class="novel_name ">总裁离魂小记</a>
                        <a href="# " class="author_name ">木三观</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">2</span>
                        <a href="# " class="novel_name ">纸飞机</a>
                        <a href="# " class="author_name ">潭石</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">3</span>
                        <a href="# " class="novel_name ">归路</a>
                        <a href="# " class="author_name ">白芥子</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">4</span>
                        <a href="# " class="novel_name ">我成了我哥的地宝</a>
                        <a href="# " class="author_name ">阿阮有酒</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">5</span>
                        <a href="# " class="novel_name ">滚蛋吧，Alpha！</a>
                        <a href="# " class="author_name ">冉尔</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">6</span>
                        <a href="# " class="novel_name ">【ABO】投桃</a>
                        <a href="# " class="author_name ">风露沁酒</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">7</span>
                        <a href="# " class="novel_name ">碰瓷界翘楚</a>
                        <a href="# " class="author_name ">陈隐</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">8</span>
                        <a href="# " class="novel_name ">红五届</a>
                        <a href="# " class="author_name ">舍木氓生</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank ">9</span>
                        <a href="# " class="novel_name">遵命</a>
                        <a href="# " class="author_name">麟潜</a>
                    </li>
                    <li class="card-item">
                        <span class="digital_rank">10</span>
                        <a href="# " class="novel_name">南风吹又生</a>
                        <a href="# " class="author_name">箫云封</a>
                    </li>
                </ul>
                <a class="more" href="# ">MORE</a>
            </div>
        </div>
        <div class="b_re_left col-sm-3">
            <div class="bre_l_box ">
                <h3 class="novel_type ">快意江湖</h3>
                <ul class="ul_list n_box">
                    <%
                        i = 0;
                    %>
                    <c:forEach items="${allNovel}" var="novel" varStatus="status">
                        <c:if test="${novel.nclass eq 2}">
                            <%
                                i = i + 1;
                            %>
                            <li class="card-item">
                                <span class="digital_rank "><%=i%></span>
                                <a href="openCatalog?nid=${novel.nid}" class="novel_name ">${novel.nname}</a>
                                <a href="solr/openAuthor?nauthor=${novel.nauthor}" class="author_name" target="iframe_a">${novel.nauthor}</a>
                            </li>
                        </c:if>
                        <c:if test="<%=i==10%>">
                            <c:set var="exitId" value="0"></c:set>
                        </c:if>
                        <% if(i == 10) %>
                    </c:forEach>
                </ul>
                <a class="more" href="solr/novelList?queryString=快意江湖">MORE</a>
            </div>
        </div>
        <div class="b_re_center col-sm-3">
            <div class="bre_c_box ">
                <h3 class="novel_type ">青春校园</h3>
                <ul class="ul_list n_box">
                    <%
                        i = 0;
                    %>
                    <c:forEach items="${allNovel}" var="novel" varStatus="status">
                        <c:if test="${novel.nclass eq 3}">
                            <%
                                i = i + 1;
                            %>
                            <li class="card-item">
                                <span class="digital_rank "><%=i%></span>
                                <a href="openCatalog?nid=${novel.nid}" class="novel_name ">${novel.nname}</a>
                                <a href="solr/openAuthor?nauthor=${novel.nauthor}" class="author_name" target="iframe_a">${novel.nauthor}</a>
                            </li>
                        </c:if>
                        <c:if test="<%=i==10%>">
                            <c:set var="exitId" value="0"></c:set>
                        </c:if>
                        <% if(i == 10) %>
                    </c:forEach>
                </ul>
                <a class="more" href="solr/novelList?queryString=青春校园">MORE</a>
            </div>
        </div>
        <div class="b_re_right col-sm-3">
            <div class="bre_r_box ">
                <h3 class="novel_type  ">玄幻奇幻</h3>
                <ul class="ul_list n_box">
                    <%
                        i = 0;
                    %>
                    <c:forEach items="${allNovel}" var="novel" varStatus="status">
                        <c:if test="${novel.nclass eq 4}">
                            <%
                                i = i + 1;
                            %>
                            <li class="card-item">
                                <span class="digital_rank "><%=i%></span>
                                <a href="openCatalog?nid=${novel.nid}" class="novel_name ">${novel.nname}</a>
                                <a href="solr/openAuthor?nauthor=${novel.nauthor}" class="author_name" target="iframe_a">${novel.nauthor}</a>
                            </li>
                        </c:if>
                        <c:if test="<%=i==10%>">
                            <c:set var="exitId" value="0"></c:set>
                        </c:if>
                        <% if(i == 10) %>
                    </c:forEach>
                </ul>
                <a class="more" href="solr/novelList?queryString=玄幻奇幻">MORE</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
