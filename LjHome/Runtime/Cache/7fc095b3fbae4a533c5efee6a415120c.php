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
				<li role="presentation" id="navacition"><a href="__APP__/Feedback">问题反馈</a></li>
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
					<li role="presentation" class="active"><a href="__URL__/">所有反馈</a></li>
					<li role="presentation"><a href="__URL__/user">我的反馈</a></li>
				</ul>

			</div>
			<div class="content left conright">

				<h3>所有反馈</h3>
				<hr style="width: 100%" />

				<div class="fdlist">
					<?php if(is_array($fbList)): $i = 0; $__LIST__ = $fbList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="list-v">
						<div class="media">
							<a class="pull-left" href="__URL__/showOne?id=<?php echo ($v["feedback_id"]); ?>&type=all"> <img class="img-circle" alt=""
								src="__PUBLIC__/Images/ic_user_header.png">
							</a>
							<div class="media-body">
								<h4 class="media-heading"><b><?php echo ($v["title"]); ?></b></h4>
								<div class="down">
									<?php echo ($v["User"]["true_name"]); ?> 发布于 <?php echo (time2str($v["time"])); ?>，
									有 <?php echo (count($v["Feedback_comment"])); ?> 条会应
								</div>
							</div>
						</div>
						<hr style="width: 100%" />
					</div><?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<?php echo ($show); ?>
			</div>
		</div>
		<div id="down"></div>
</body>
</html>