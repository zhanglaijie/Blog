<%@ page contentType="text/html;charset=utf-8"%>
<%@include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>新建文章</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="${ctx}/validator/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${ctx}/validator/dist/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="${ctx}/css/common/common.css"/>
	<link rel="stylesheet" href="${ctx}/css/back/index.css"/>
	<!-- include summernote css/js-->
<link href="${ctx}/summernote/summernote.css" rel="stylesheet">

  </head>
  <body>
	<div class="container">
	<%@include file="./common/navbar.jsp" %>
	<!-- 顶部导航结束 -->
	<div class="row clearfix from-top">
		<div class="col-md-1 column left-nav">
			<%@include file="./common/left_nav.jsp" %>
	<!-- 左边导航结束 -->
		</div>
		<div class="col-md-11 column mycontent">
			<ul class="breadcrumb">
				<li>
					 <a href="#">新建文章</a>
				</li>
			</ul>
			<form role="form">
				<div class="form-group">
					 <label for="title" class="control-label">标题:</label>
					 <div>
					 	<input class="form-control" id="title" type="text" />
					 </div>
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1"> 内容(Summernote编辑器)</label>
					 <div id="summernote">Hello Summernote</div>
				</div>
				<div class="form-group">
					 <label for="exampleInputFile">File input</label><input id="exampleInputFile" type="file" />
					<p class="help-block">
						Example block-level help text here.
					</p>
				</div>
				<div class="checkbox">
					 <label><input type="checkbox" />Check me out</label>
				</div> <button type="button" id="sub" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
</div>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${ctx}/validator/vendor/jquery/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${ctx}/validator/vendor/bootstrap/js/bootstrap.min.js"></script>
  	<script type="text/javascript" src="${ctx}/validator/dist/js/bootstrapValidator.js"></script>
  	<script src="${ctx}/summernote/summernote.js"></script>
  	<script type="text/javascript">
	  	$(document).ready(function() {
	  	 var d =  $('#summernote').summernote({
	  		  height: 500,                 // set editor height
	  		  minHeight: null,             // set minimum height of editor
	  		  maxHeight: null,             // set maximum height of editor
	  		  focus: false                  // set focus to editable area after initializing summernote
	  		});
	  	 
	  	 $("#sub").click(function(){
	  		 alert($('#summernote').summernote('code'));
	  	 });
	  	});
  	</script>
  </body>
</html>