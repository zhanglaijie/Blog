<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="<%=basePath%>/css/login.css">
  </head>
  <body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<h3>
					壹博客. 这是一个博客.
				</h3>
			</div>
		</div>
	<div class="row clearfix login-position">
		<div class="col-md-4 column">
			
		</div>
		<div class="col-md-4 column login-color">
			<div class="tabbable" id="tabs-803249">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-92846" data-toggle="tab">登陆</a>
					</li>
					<li>
						 <a href="#panel-556995" data-toggle="tab">注册</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-92846">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								 <label for="inputEmail3" class="col-sm-3 control-label">
									<span class="glyphicon glyphicon-user"></span> 用户
								 </label>
								<div class="col-sm-9">
									<input class="form-control" id="inputEmail3" type="email" />
								</div>
							</div>
							<div class="form-group">
								 <label for="inputPassword3" class="col-sm-3 control-label">
								 <span class="glyphicon glyphicon-lock"></span>
								 密码</label>
								<div class="col-sm-9">
									<input class="form-control" id="inputPassword3" type="password" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										 <label><input type="checkbox" />Remember me</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									 <button type="button" onclick="window.location='index.html'" class="btn btn-info">登陆</button>
									 <button type="submit" class="btn btn-info">取消</button>
									 <button type="submit" class="btn btn-link">找回密码</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane" id="panel-556995">
						<form class="form-horizontal" role="form" action="user/register" method="post">
							<div class="form-group">
								 <label for="inputEmail3" class="col-sm-4 control-label">
								 <span class="glyphicon glyphicon-envelope"></span>邮箱地址</label>
								<div class="col-sm-8">
									<input class="form-control" id="email" name="email" type="email" />
								</div>
							</div>
							<div class="form-group">
								 <label for="inputPassword3" class="col-sm-4 control-label">
								 <span class="glyphicon glyphicon-lock"></span>用户密码
								 </label>
								<div class="col-sm-8">
									<input class="form-control" id="password" name="password" type="password" />
								</div>
							</div>
							<div class="form-group">
								 <label for="inputEmail3" class="col-sm-4 control-label">
								 <span class="glyphicon glyphicon-check"></span>重复密码</label>
								<div class="col-sm-8">
									<input class="form-control" id="repassword" name="repassword" type="password" />
								</div>
							</div>
							<div class="form-group">
								 <label for="inputPassword3" class="col-sm-4 control-label">
								 <span class="glyphicon glyphicon-pencil"></span>博客名称</label>
								<div class="col-sm-8">
									<input class="form-control" name="blogname" id="blogname" type="text" />
								</div>
							</div>
							<div class="form-group">
								 <label for="inputEmail3" class="col-sm-4 control-label" 
								 ><span class="glyphicon glyphicon-home"></span>博客地址</label>
								<div class="col-sm-8">
									http://laijie.top/
									<input style="width: 59%;display: inline;" class="form-control" id="blogaddress" name="blogaddress" type="text" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="hidden" name="action" value="register"/>
									 <button type="submit" class="btn btn-primary">注册</button>
									 <button type="reset" class="btn btn-info">取消</button>
								</div>
							</div>
							
						</form>
					</div>
				</div>
			</div>
			
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  </body>
</html>
