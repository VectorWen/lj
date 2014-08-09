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
					<?php if($type == 'all'): ?><li role="presentation" class="active"><a href="__URL__/">所有反馈</a></li>
					<li role="presentation"><a href="__URL__/user">我的反馈</a></li>
					<?php else: ?>
					<li role="presentation"><a href="__URL__/">所有反馈</a></li>
					<li role="presentation" class="active"><a href="__URL__/user">我的反馈</a></li><?php endif; ?>
				</ul>

			</div>
			<div class="content left conright">


				<div class="media">
					<a class="pull-left" href="#"> <img class="img-circle" alt=""
						src="__PUBLIC__/Images/ic_user_header.png">
					</a>
					<div class="media-body title">
						<h3 class="media-heading">
							<b><?php echo ($fb["title"]); ?></b>
						</h3>
					</div>
				</div>

				<hr style="width: 100%" />

				<div class="content">
					<p><?php echo ($fb["content"]); ?></p>
				</div>

				<div>
					<p>
						<?php echo ($fb["User"]["true_name"]); ?> 发布于 <?php echo (time2str($fb["time"])); ?>
						<?php if($fb["userid"] == $userid): ?><a
							href="__URL__/delete?id=<?php echo ($fb["feedback_id"]); ?>">删除</a><?php endif; ?>
					</p>
				</div>
				<hr style="width: 100%" />


				<div class="commentlist">
					<?php if(is_array($fbComment)): $i = 0; $__LIST__ = $fbComment;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><div class="list-v">

						<div class="media">
							<a class="pull-left" href="#"> <img class="img-circle" alt=""
								src="__PUBLIC__/Images/ic_user_header.png">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									<b><?php echo ($v["content"]); ?></b>
								</h4>
								<div class="down">
									<?php echo ($v["User"]["true_name"]); ?> 发布于 <?php echo (time2str($v["time"])); ?>
									<?php if($v["userid"] == $userid): ?><a
										href="__URL__/delComment?id=<?php echo ($v["comment_id"]); ?>">删除</a><?php endif; ?>
								</div>
							</div>
						</div>
						<hr style="width: 100%" />
					</div><?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<div class="row">
					<!-- /.col-lg-6 -->
					<div class="col-lg-6">

						<form action="__URL__/addComment" method="post">
							<input type="hidden" name="id" value="<?php echo ($fb["feedback_id"]); ?>" />
							<div class="input-group">
								<input type="text" class="form-control" name="content">
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">发表评论</button>
								</span>
							</div>
						</form>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->
			</div>
		</div>

	</div>
	<div id="down"></div>
</body>
</html>