<%@ page contentType="text/html;charset=utf-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="${ctx}/validator/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${ctx}/validator/dist/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="${ctx}/css/common/common.css"/>
	<link rel="stylesheet" href="${ctx}/css/back/index.css"/>
  </head>
  <body>
	<div class="container">
	<%@include file="./common/navbar.jsp" %>
	<!-- 导航结束 -->
	<div class="row clearfix from-top">
		<div class="col-md-1 column left-nav">
			<%@include file="./common/left_nav.jsp" %>
	<!-- 导航结束 -->
		</div>
		<div class="col-md-11 column mycontent">
			<div class="tabbable" id="tabs-547795">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-l1" data-toggle="tab">文章管理</a>
					</li>
					<li>
						 <a href="#panel-l2" data-toggle="tab">类别管理</a>
					</li>
					<li >
						 <a href="#panel-l3" data-toggle="tab">评论管理</a>
					</li>
					<li>
						 <a href="#panel-l4" data-toggle="tab">博客设置</a>
					</li>
					<li >
						 <a href="#panel-l5" data-toggle="tab">博客栏目</a>
					</li>
					<li>
						 <a href="#panel-l6" data-toggle="tab">草稿箱</a>
					</li>
					<li>
						 <a href="#panel-l7" data-toggle="tab">回收站</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-l1">
						<!--正文—左侧导航栏start-->
						<%@include file="./common/post_list.jsp" %>
					</div>
					<div class="tab-pane" id="panel-l2">
						<p>
							Howdy, I'm in Section 2.
						</p>
					</div>
					<div class="tab-pane" id="panel-l3">
						<p>
							Howdy, I'm in Section 3.
						</p>
					</div>
					<div class="tab-pane" id="panel-l4">
						<p>
							Howdy, I'm in Section 4.
						</p>
					</div>
					<div class="tab-pane" id="panel-l5">
						<p>
							Howdy, I'm in Section 5.
						</p>
					</div>
					<div class="tab-pane" id="panel-l6">
						<p>
							Howdy, I'm in Section 6.
						</p>
					</div>
					<div class="tab-pane" id="panel-l7">
						<p>
							Howdy, I'm in Section 7.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${ctx}/validator/vendor/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${ctx}/validator/vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="${ctx}/validator/dist/js/bootstrapValidator.js"></script>
  </body>
</html>