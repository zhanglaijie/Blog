﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>壹博客登陆系统</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<%=basePath%>/validator/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/validator/dist/css/bootstrapValidator.css"/>
  </head>
  <body>
			<div class="container">
				<div class="row clearfix" style="background-color: #C7D0FB;">
					<div class="col-md-2 column">
						<img alt="140x140" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/140/140/default.jpg" style="padding: 20px;"/>
					</div>
					<div class="col-md-4 column" style="color: #fff;">
						<h3>
							苍云爹
						</h3>
							<h4>我就是你爹苍云</h4>
					</div>
					<div class="col-md-1 column">
					</div>
					<div class="col-md-5 column" style="padding-top:138px">
						<ul class="nav nav-tabs">
							<li>
								 <a href="#">壹博客</a>
							</li>
							<li class="active">
								 <a href="#">首页</a>
							</li>
							<li>
								 <a href="#">新随笔</a>
							</li>
							<li>
								 <a href="#">联系</a>
							</li>
							<li>
								 <a href="#">订阅</a>
							</li>
							<li>
								 <a href="#">管理</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row clearfix " style="background-color:rgb(244, 247, 249);">
					<div class="col-md-2 column">
					</div>
					<div class="col-md-6 column">
						<h2>
							mongodb的save和insert函数的区别 

						</h2>
						<p>
							摘要: 如果插入的数据带_id字段，如果数据库里已经存在这个_id的数据，ins
						</p>
						<p>
							 <a class="btn" href="#">View details »</a>
						</p>
						<h2>
							Heading
						</h2>
						<p>
							Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
						</p>
						<p>
							 <a class="btn" href="#">View details »</a>
						</p>
						<h2>
							Heading
						</h2>
						<p>
							Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
						</p>
						<p>
							 <a class="btn" href="#">View details »</a>
						</p>
						<h2>
							Heading
						</h2>
						<p>
							Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
						</p>
						<p>
							 <a class="btn" href="#">View details »</a>
						</p>
						<h2>
							Heading
						</h2>
						<p>
							Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
						</p>
						<p>
							 <a class="btn" href="#">View details »</a>
						</p>
						<ul class="pagination">
							<li>
								 <a href="#">Prev</a>
							</li>
							<li>
								 <a href="#">1</a>
							</li>
							<li>
								 <a href="#">2</a>
							</li>
							<li>
								 <a href="#">3</a>
							</li>
							<li>
								 <a href="#">4</a>
							</li>
							<li>
								 <a href="#">5</a>
							</li>
							<li>
								 <a href="#">Next</a>
							</li>
						</ul>
					</div>
					<div class="col-md-4 column">
						
						<div class="panel panel-primary" style="top: 30px; position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									公告
								</h3>
							</div>
							<div class="panel-body" >
								<p>昵称：张来杰</p>
								<p>园龄：7个月</p>
								<p>关注：0人</p>
								<p>粉丝：2人</p>
							</div>
						</div>
						
						<div class="list-group" style="top: 30px; position: relative;">
							 <a href="#" class="list-group-item active">随笔分类</a>
							
							<div class="list-group-item">
								 <span class="badge">20</span>java开发
							</div>
							<div class="list-group-item">
								 <span class="badge">14</span> php开发
							</div> 
							<a class="list-group-item">
							<span class="badge">14</span> android开发</a>
						</div>
						<ul class="nav nav-pills" style="top: 30px; position: relative;">
							<li class="active">
								 <a href="#"> <span class="badge pull-right">42</span> Home</a>
							</li>
							<li class="active">
								 <a href="#"> <span class="badge pull-right">42</span> Home</a>
							</li>
							<li>
								 <a href="#"> <span class="badge pull-right">42</span> Home</a>
							</li>
							<li>
								 <a href="#"> <span class="badge pull-right">42</span> Home</a>
							</li>
							<li>
								 <a href="#"> <span class="badge pull-right">42</span> Home</a>
							</li>
							<li>
								 <a href="#"> <span class="badge pull-right">16</span> More</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=basePath%>/validator/vendor/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/validator/vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="<%=basePath%>/validator/dist/js/bootstrapValidator.js"></script>
  </body>
</html>