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
 	<link rel="stylesheet" href="${ctx}/css/login.css">
  </head>
  <body>
			<div class="container">
				<div class="login">
				<h1><a>壹博客</a></h1>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				</div>
				<div class="col-md-4 column">
					<div class="jumbotron">
						<h3><a href="<%=path%><c:out value="/login.jsp"></c:out>"><c:out value="${message}"></c:out></a></h3>
					</div>
				</div>
				<div class="col-md-4 column">
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