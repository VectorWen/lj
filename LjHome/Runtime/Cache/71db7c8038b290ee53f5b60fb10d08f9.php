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
</head>
<body class="acty">

	<input id="img" type="file" size="45" name="img" class="input">
	<button id="buttonUpload" onclick="return ajaxFileUpload();">Upload</button>
	
	<script type="text/javascript">
		function ajaxFileUpload() {
			$.ajaxFileUpload({
				url : '__URL__/Upload/upload', //你处理上传文件的服务端
				secureuri : false,
				fileElementId : 'img',//  --- 元素的ID
				dataType : 'json',
				success : function(data,status) {
					alert(data['path']);
				},
				error : function(html, status, e) {
					alert('1');
				}
			});

			return false;
		}
	</script>
</body>
</html>