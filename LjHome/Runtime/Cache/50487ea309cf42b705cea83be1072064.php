<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问题反馈</title>
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="__CSS__/css_style.css">
</head>
<body>

	<div id="top">
		<div class="container">
			<img alt="logo" class="img-rounded img-responsive logo "
				src="__PUBLIC__/Images/ic_logo.png">
			<div class="right">
				<?php if($isLogin): ?><img alt="login"
					class="img-rounded img-responsive logined"
					src="__PUBLIC__/Images/ic_user_header.png">
				<div class="name">
					<a href="__APP__/Login/logout"><button type="button"
							class="btn btn-info btn-sm">退 出</button></a>
				</div>


				<?php else: ?> <a href="__APP__/Login/login">
					<button type="button" class="btn btn-warning login">登 录</button>
				</a><?php endif; ?>
			</div>
		</div>
	</div>
	<div id="nav">
		<div class="container">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li role="presentation"><a href="__ROOT__/">首页</span></a></li>
				<li role="presentation"><a href="#">新闻中心</a></li>
				<li role="presentation"><a href="#">教程借阅</a></li>
				<li role="presentation"><a href="#">同乡活动</a></li>
				<li role="presentation"><a href="#">资源共享</a></li>
				<li role="presentation"><a href="#">用户中心</a></li>
				<li role="presentation" id="navacition"><a
					href="__APP__/Feedback">问题反馈</a></li>
			</ul>
		</div>
	</div>
	<div id="content">

		<div class="container">
			<div class="left conleft">
				<div class="page-header">
					<h2>
						问题反馈 <a href="__URL__/add"> <small
							class="glyphicon glyphicon-plus"></small></a>
					</h2>

				</div>

				<ul class="nav  nav-stacked" role="tablist">
					<li role="presentation"><a href="__URL__/">所有反馈</a></li>
					<li role="presentation"><a href="__URL__/user">我的反馈</a></li>
				</ul>

			</div>
			<div class="content left conright">


				<form class="form-inline" role="form" action="__URL__/add" method="post">
					<input type="text" name="title" class="form-control" placeholder="请输入标题">


					<script id="feedbackContent" name="content" type="text/plain"
						style="height:300px;">
   				 	</script>
					<!-- 配置文件 -->
					<script type="text/javascript" src="__JS__/ueditor.config.js"></script>
					<!-- 编辑器源码文件 -->
					<script type="text/javascript" src="__JS__/ueditor.all.min.js"></script>
					<!-- 实例化编辑器 -->
					<script type="text/javascript">
						var ue = UE.getEditor('feedbackContent');
					</script>
					<button type="submit" class="btn btn-warning">提交</button>
				</form>









			</div>
		</div>
		<div id="down"></div>
</body>
</html>