<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>做最好的同乡会</title>
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
<body class="index">
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
				<li role="presentation" id="navacition"><a href="__ROOT__/">首页</span></a></li>
				<li role="presentation"><a href="#">新闻中心</a></li>
				<li role="presentation"><a href="#">教程借阅</a></li>
				<li role="presentation"><a href="__APP__/Activity" target="_blank">同乡活动</a></li>
				<li role="presentation"><a href="#">资源共享</a></li>
				<li role="presentation"><a href="#">用户中心</a></li>
				<li role="presentation"><a href="__APP__/Feedback">问题反馈</a></li>
			</ul>
		</div>
	</div>
	<div id="content">
		<div class="container">
			<div class="content-1">
				<div class="jumbotron">
					<h1>Hello, world!</h1>
					<p>做最好的同乡会，就要从Hello 做起，坚持着这个观念，相信自己，一路走下去</p>
					<p>
						<a class="btn btn-primary btn-lg" role="button">More</a>
					</p>
				</div>
				<img alt="content_g" class="img-rounded img-responsive"
					src="__PUBLIC__/Images/ic_content_1_g.png">
			</div>
			<div class="content-2">
				<div class="jumbotron">
					<h1>同乡活动</h1>
				</div>
				<div class="row">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x300" alt="..."
								src="__PUBLIC__/Images/ic_content_2_a.jpg">
							<div class="caption">
								<h3>师姐毕业了？</h3>
								<p>我们想去看看</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">详 情</a> <a
										href="#" class="btn btn-default" role="button">赞(148)</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x300" alt="..."
								src="__PUBLIC__/Images/ic_content_2_a.jpg">
							<div class="caption">
								<h3>师姐毕业了</h3>
								<p>大家都来了...</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">详 情</a> <a
										href="#" class="btn btn-default" role="button">赞(178)</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x300" alt="..."
								src="__PUBLIC__/Images/ic_content_2_a.jpg">
							<div class="caption">
								<h3>师姐真的毕业了</h3>
								<p>散了吧</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">详 情</a> <a
										href="#" class="btn btn-default" role="button">赞(9999)</a>
								</p>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="content-3">
				<div class="jumbotron">
					<h1>完善中...</h1>
				</div>
			</div>
			<div class="content-3"></div>
			<div class="content-3"></div>
			<div class="content-3"></div>

		</div>
	</div>
	<div id="down"></div>
</body>
</html>