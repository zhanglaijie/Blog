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
	<link rel="stylesheet" href="<%=basePath%>/validator/dist/css/bootstrapValidator.css"/>
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
						<form id="login-form" action="<%=basePath%>j_spring_security_check" method="post" class="form-horizontal" role="form">
							<div class="form-group">
								 <label for="j_username" class="col-sm-3 control-label">
									<span class="glyphicon glyphicon-user"></span> 用户
								 </label>
								<div class="col-sm-9">
									<input id="j_username" name="j_username" class="form-control" placeholder="用户名或邮箱" id="inputEmail3" type="text" />
								</div>
							</div>
							<div class="form-group">
								 <label for="j_password" class="col-sm-3 control-label">
								 <span class="glyphicon glyphicon-lock"></span>
								 密码</label>
								<div class="col-sm-9">
									<input class="form-control" id="j_password" name="j_password" placeholder="密码" type="password" />
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
									 <button type="submit"  class="btn btn-info">登陆</button>
									 <button type="reset" id="loginReset" class="btn btn-info">取消</button>
									 <button type="submit" class="btn btn-link">找回密码</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane" id="panel-556995">
						<form id="register-form" class="form-horizontal" role="form" action="user/register" method="post">
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
									<input class="form-control" id="confirmPassword" name="confirmPassword" type="password" />
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
									<input  class="form-control blogsaddress" id="blogaddress" name="blogaddress" type="text" />
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<input type="hidden" name="action" value="register"/>
									 <button id="validateBtn" type="submit" class="btn btn-primary">注册</button>
									 <button id="resetBtn" type="reset" class="btn btn-info">取消</button>
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
    <script src="<%=basePath%>/validator/vendor/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/validator/vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="<%=basePath%>/validator/dist/js/bootstrapValidator.js"></script>
  	<script type="text/javascript">
		$(document).ready(function() {
		   //注册表单验证
		    $('#register-form').bootstrapValidator({
		//        live: 'disabled',
		        message: 'This value is not valid',
		        feedbackIcons: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
		        	username: {
		                validators: {
		                	notEmpty: {
		                        message: '请输入用户名'
		                    }
		                }
		            },
		            email: {
		                validators: {
		                	notEmpty: {
		                        message: '请输入邮箱'
		                    },
		                    emailAddress: {
		                        message: '请输入正确的邮箱'
		                    }
		                }
		            },
		            password: {
		                validators: {
		                    notEmpty: {
		                        message: '请输入登录密码'
		                    },
		                    different: {
		                        field: 'email',
		                        message: '密码不能和邮箱相同'
		                    }
		                }
		            },
		            confirmPassword: {
		                validators: {
		                	 notEmpty: {
			                        message: '请输入确认密码'
			                    },
		                    identical: {
		                        field: 'password',
		                        message: '密码与确认密码输入不一致'
		                    },
		                    different: {
		                        field: 'email',
		                        message: '密码不能和邮箱相同'
		                    }
		                }
		            },
		            blogname: {
		                validators: {
		                    notEmpty: {
		                        message: '请输入博客名称'
		                    }
		                }  
		            },
		            blogaddress: {
		                validators: {
		                    notEmpty: {
		                        message: '请输入博客地址博客名称'
		                    }
		                } 
		            }
		           
		        }
		    });
			//登陆表单验证
		    $('#login-form').bootstrapValidator({
				//        live: 'disabled',
				        message: '该数据不合法',
				        feedbackIcons: {
				            valid: 'glyphicon glyphicon-ok',
				            invalid: 'glyphicon glyphicon-remove',
				            validating: 'glyphicon glyphicon-refresh'
				        },
				        fields: {
				        	username: {
				                validators: {
				                	notEmpty: {
				                        message: '请输入用户名'
				                    }
				                }
				            },
				            password: {
				                validators: {
				                    notEmpty: {
				                        message: '请输入登录密码'
				                    },
				                    different: {
				                        field: 'email',
				                        message: '密码不能和邮箱相同'
				                    }
				                }
				            }

				        }
				    });
		    // Validate the form manually
		   // $('#validateBtn').click(function() {
		     //   $('#register-form').bootstrapValidator('validate');
		    //});
		
		    $('#resetBtn').click(function() {
		        $('#register-form').data('bootstrapValidator').resetForm(true);
		    });
		    $('#loginReset').click(function() {
		        $('#login-form').data('bootstrapValidator').resetForm(true);
		    });
		});
		</script>
  </body>
</html>
