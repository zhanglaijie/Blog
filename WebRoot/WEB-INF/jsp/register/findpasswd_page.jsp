<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<div class="row clearfix">
					<div class="col-md-12 column">
						<h3>
						壹博客系统 OneBlogs
					</h3>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-3 column">
				</div>
				<div class="col-md-6 column">
					<div class="jumbotron">
						<h3>
							重设密码
						</h3>
						<form class="form-horizontal" role="form">
						  <div class="form-group">
						    <label  class="col-sm-4 control-label" for="exampleInputEmail2">
						    <span class="glyphicon glyphicon-lock"></span>用户密码</label>
						    <div class="col-sm-8">
						    	<input type="email" class="  form-control" id="exampleInputEmail2" placeholder="请输入你的邮箱地址">
						  	</div>
						  </div>
						  <div class="form-group">
						    <label class="col-sm-4 control-label" for="exampleInputPassword2">
						    <span class="glyphicon glyphicon-lock"></span>确认密码</label>
						    <div class="col-sm-8">
						    	<input type="password" class="form-control" id="exampleInputPassword2" placeholder="请输入你的邮箱密码">
						  	</div>
						  </div>
							<div class="form-group">
										<div class="col-sm-offset-4 col-sm-8">
											 <button type="submit"  class="btn btn-primary">登陆</button>
											 <button type="reset" id="loginReset" class="btn btn-info">取消</button>
										</div>
									</div>
						</form>  
					</div>
				</div>
				<div class="col-md-3 column">
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