<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>问题反馈</title>
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.4.2/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<link rel="stylesheet" href="__CSS__/css_style.css">
<script type="text/javascript" src="__PUBLIC__/Js/ajaxfileupload.js"></script>
<script type="text/javascript" src="__PUBLIC__/Js/js_js.js"></script>
</head>
<body class="acty">
	<div id="top">
		<div class="container">
			<div class="logo">
				<img src="__PUBLIC__/Images/ic_logo_2.png" />
			</div>
			<div class="search left">
				<div class="row">
					<!-- /.col-lg-6 -->
					<div class="col-lg-12">
						<form action="/lj/index.php/Feedback/addComment" method="post">
							<input type="hidden" name="id" value="9">
							<div class="input-group">
								<input type="text" class="form-control" name="content">
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">搜索</button>
								</span>
							</div>
						</form>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>
			</div>
			<div class="left">
				<ul class="nav nav-pills" role="tablist">
					<li role="presentation"><a href="#">活动</a></li>
					<li role="presentation"><a href="#">话题</a></li>
					<li role="presentation"><a href="#">通知</a></li>
				</ul>
			</div>
			<div class="login right">

				<button type="button" class="btn btn-info">发起</button>
				<img src="__PUBLIC__/Images/ic_user_header.png"
					style="width: 34px; margin: 10px" alt="..." class="img-rounded">
				<span>VectorHuang</span>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="container">
			<div class="actylist left">
				<div class="listhead">
					<h1 id="pagination" class="page-header">发起</h1>
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#">话题讨论</a></li>
						<li role="presentation"><a href="#">个人活动</a></li>
					</ul>
				</div>

				<div class="sponsorform">
					<form class="form-inline" role="form" action="__URL__/addTheme"
						method="post">
						<input type="text" name="title" class="form-control"
							placeholder="请输入标题">


						<script id="feedbackContent" name="content" type="text/plain"
							style="height:300px;width:100%">
   				 		</script>
						<!-- 配置文件 -->
						<script type="text/javascript" src="__JS__/ueditor.config.js"></script>
						<!-- 编辑器源码文件 -->
						<script type="text/javascript" src="__JS__/ueditor.all.min.js"></script>
						<!-- 实例化编辑器 -->
						<script type="text/javascript">
							var ue = UE.getEditor('feedbackContent');
						</script>

						<div class="form-group">
							<label for="exampleInputFile">添加图片</label> <input id="img"
								type="file" name="img" class="input">
							<p class="help-block">图片不能超过 1M.</p>
							<button type="button" class="btn btn-primary" id="buttonUpload"
								onclick="return ajaxFileUpload();">上传</button>
							<button type="button" class="btn  btn-primary" id="buttonUpload2"
								disabled="disabled">上传中...</button>
						</div>
						<img id="buttonUpload3" class="img-rounded img-responsive"
							style="height: 100px;" alt="" src="" /> <input name="img"
							type="hidden" class="imghidden" />
						<script type="text/javascript">
							function ajaxFileUpload() {
								$('#buttonUpload').hide();
								$('#buttonUpload2').show();
								$.ajaxFileUpload({
									url : '__APP__/Upload/upload', // 你处理上传文件的服务端
									secureuri : false,
									fileElementId : 'img',// --- 元素的ID
									dataType : 'json',
									success : function(data, status) {
										if (data['statu'] == 500) {
											alert(data['msg']);
										} else {
											//alert('上传成功！！');
											$('#buttonUpload3').attr('src',
													data['path']);
											$('.imghidden').attr('value',
													data['savename']);
											$('#buttonUpload3').show();

										}
										$('#buttonUpload2').hide();
										$('#buttonUpload').show();

									},
									error : function(data, status, e) {
										alert(e);
										$('#buttonUpload2').hide();
										$('#buttonUpload').show();
									}
								});

								return false;
							}

							function settype(type) {
								$('.actytype').attr('value', type);
								return true;
							}

							
						</script>
						<input name="type" type="hidden" value="1" class="actytype" />
						<button type="submit" class="sponbtn right btn btn-warning"
							onclick="return settype(0);">存为草稿</button>
						<button type="submit" class="sponbtn right btn btn-success"
							onclick="return settype(1);">发布</button>
					</form>
				</div>
			</div>
			<div class="dynamic right">
				<div class="notice">
					<div class="alert alert-warning" role="alert">

						<p>公告</p>
						<p>我说你们呀少的发送到发送到发</p>
						<p>就我说你们呀的所发生的法师打发</p>
						<p>你们也说说我呀啊少的发送到发送到发</p>
						<p>对不对啊少的发送到发送到发</p>
						<p>不管了吗？阿斯顿发烧发松岛枫</p>
						<p>好不好阿斯顿发烧法师打发</p>
						<p>可以了维尔文身断发</p>
					</div>
				</div>
				<div class="newest">
					<ul class="nav nav-pills nav-stacked" role="tablist">
						<li role="presentation" class="active"><a href="#">热门话题</a></li>
						<li role="presentation"><a href="#">Profile</a></li>
						<li role="presentation"><a href="#">Messages</a></li>
						<li role="presentation"><a href="#">Profile</a></li>
						<li role="presentation"><a href="#">Messages</a></li>
					</ul>

				</div>
				<hr />
				<div class="newest">
					<ul class="nav nav-pills nav-stacked" role="tablist">
						<li role="presentation" class="active"><a href="#">热门活动</a></li>
						<li role="presentation"><a href="#">Profile</a></li>
						<li role="presentation"><a href="#">Messages</a></li>
						<li role="presentation"><a href="#">Profile</a></li>
						<li role="presentation"><a href="#">Messages</a></li>
					</ul>

				</div>
			</div>
		</div>
		<div id="down"></div>
</body>
</html>