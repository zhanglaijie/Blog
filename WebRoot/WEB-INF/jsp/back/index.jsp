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
  	<!--  <div class="login">
		<h1><a></a></h1>
		<h1><a>壹博客</a></h1>
	</div>-->
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar mynav navbar-fixed-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">壹博客</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							 <a href="#">Link</a>
						</li>
						<li>
							 <a href="#">Link</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">Action</a>
								</li>
								<li>
									 <a href="#">Another action</a>
								</li>
								<li>
									 <a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">雄霸天下<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">个人中心</a>
								</li>
								<li>
									 <a href="#">账号设置</a>
								</li>
								<li>
									 <a href="#">意见反馈</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">退出</a>
								</li>
							</ul>
						</li>
						<li>
							 <a href="#">我的博客</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
	
	<!-- 导航结束 -->
	<div class="row clearfix from-top">
		<div class="col-md-1 column left-nav">
			<div class="panel panel-primary ">
				<div class="panel-heading">
					<h3 class="panel-title">
						操作
					</h3>
				</div>
				<div class="panel-body">
					添加新随笔
				</div>
				<div class="panel-body">
					草稿箱
				</div>
				<div class="panel-body">
					设置默认编辑器
				</div>
				<div class="panel-body">
					博客客户端
				</div>
				<div class="panel-body">
					博客签名
				</div>
				<div class="panel-body">
					博客备份
				</div>
				<div class="panel-body">
					博客搬家
				</div>
			</div>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						分类
					</h3>
				</div>
				<div class="panel-body">
					[编辑分类]
				</div>
				<div class="panel-body">
					[未分类]
				</div>
				<div class="panel-body">
					java(6)
				</div>
				<div class="panel-body">
					javscript(3)
				</div>
				<div class="panel-body">
					javscript(3)
				</div>
				<div class="panel-body">
					javscript(3)
				</div>
			</div>
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