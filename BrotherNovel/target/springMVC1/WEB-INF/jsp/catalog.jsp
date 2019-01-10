<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="${pageContext.request.contextPath}/">
		<meta charset="UTF-8">
		<title>目录</title>
        <script src="js/jquery-1.11.3.min.js"></script>
        <link rel="stylesheet" href="Bootstrap/css/bootstrap.css">
		<script src="Bootstrap/js/bootstrap.js"></script>
		<link rel="stylesheet" type="text/css" href="css/common.css" />
		<link rel="stylesheet" type="text/css" href="css/catalog.css"/>
	</head>

	<body>
		<!--头部-->
		<%--<%@ include file="head.jsp"%>--%>

		<!--中部-->
		<div id="novel_center">
			<div class="cen_novel">
				<div class="c_topic_img">
					<img src="/brotherNovel/pic/${novel.nlogo}" />
				</div>
				<div class="c_topic_intro">
					<div>
						<span class="info-name">${novel.nname }</span>
					</div>
					<div class="info-tag">
						<span class="info-detail">作者:</span>
						<a href="solr/openAuthor?nauthor=${novel.nauthor}">${novel.nauthor }</a>&nbsp;&nbsp;
						<span class="info-detail">类别:</span>
						<c:choose>
							<c:when test="${novel.nclass eq 0}">
								<a href="solr/novelList?queryString=近代现代" >近代现代</a>
							</c:when>
							<c:when test="${novel.nclass eq 1}">
								<a href="solr/novelList?queryString=古代架空" >古代架空</a>
							</c:when>
							<c:when test="${novel.nclass eq 2}">
								<a href="solr/novelList?queryString=快意江湖" >快意江湖</a>
							</c:when>
							<c:when test="${novel.nclass eq 3}">
								<a href="solr/novelList?queryString=青春校园" >青春校园</a>
							</c:when>
							<c:when test="${novel.nclass eq 4}">
								<a href="solr/novelList?queryString=玄幻奇幻" >玄幻奇幻</a>
							</c:when>
						</c:choose>

						<span class="info-detail">状态:</span>
							<c:if test="${novel.nstatic eq 0}">
								<a href="solr/novelList?queryString=连载">连载</a>
							</c:if>
							<c:if test="${novel.nstatic eq 1}">
								<a href="solr/novelList?queryString=完结">完结</a>
							</c:if>
					</div>
					<div class="info-pop">
						<span class="info-detail">点击:</span>
						<label class="info-state">${novel.nhot }</label>&nbsp;
						<span class="info-detail">推荐:</span>
						<label class="info-state">555</label>&nbsp;
						<span class="info-detail">收藏:</span>
						<label class="info-state">76483</label>
					</div>
					<div class="info-click">
						<button type="button" class="info-read" onclick="readContent('${novel.nid}')">
							<span>点击阅读</span>
						</button>
						<div class="btn-group">
							<a href="#">收藏</a>
							<a href="#">打赏</a>
							<a href="#">推荐</a>
							<a href="#">分享</a>
						</div>
					</div>
				</div>
			</div>
			<div class="cen_simple">
				<p class = "cen_s_title">文章简介</p>
				<input type="hidden" value="${novel.nintro }" id="intro">
				<span class = "cen_s"></span>
			</div>
			<div class="cen_catalog">
				<p class = "cen_s_title">目录</p>
				<ul class = "cata_list">
					<c:forEach items="${chapterList }" var="chapter" varStatus="status">
						<li><a href="content?nid=${novel.nid }&chapterid=${chapter.chapterid }" method="post" target="_blank"><span>${chapter.chaptername }</span></a></li>
					</c:forEach>
					
				</ul>
			</div>
		</div>

		<script src="layer/layer.js"></script>
		<script type="text/javascript">
            function readContent(nid) {
                $.ajax({
                    type:"POST",
                    url:"judgeCatalog",
                    data:{"nid":nid,"chapterid":1},
                    async:true,
                    success:function(data) {
                        console.log(data);
                        if(data == "noBigger"){
                            layer.alert("作者还没有开始动笔呢");
                        }else if(data =="turn"){
                            var form = document.createElement('form');
                            form.action = "content?nid=" + nid+"&chapterid=1";
                            form.target = '_blank';
                            form.method = 'POST';
                            document.body.appendChild(form);
                            form.submit();
                        }
                    },
				})

            }

            $(function(){
				var intro = $("#intro").val();
                var array = intro.split("\n");
                $.each(array, function (index, value) {
                    $(".cen_s").append("<p>" + value.replace(/(^\s*)/g," ") + "</p><br>");
                });
			})
		</script>
	</body>

</html>