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
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<%=basePath%>/validator/vendor/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=basePath%>/validator/vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="<%=basePath%>/validator/dist/js/bootstrapValidator.js"></script>
  	<script type="text/javascript">
		$(document).ready(function() {
		    // Generate a simple captcha
		    function randomNumber(min, max) {
		        return Math.floor(Math.random() * (max - min + 1) + min);
		    };
		    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
		
		    $('#register-form').bootstrapValidator({
		//        live: 'disabled',
		        message: 'This value is not valid',
		        feedbackIcons: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
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
		            },
		            captcha: {
		                validators: {
		                    callback: {
		                        message: 'Wrong answer',
		                        callback: function(value, validator) {
		                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
		                            return value == sum;
		                        }
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
		});
		</script>
  </body>
</html>
