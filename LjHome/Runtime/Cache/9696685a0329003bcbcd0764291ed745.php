<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>

<link rel="stylesheet" type="text/css" href="__PUBLIC__/Css/login.css" />

</head>
<body>


	<div class="login">
		<div class="box png">
			<div class="logo png"></div>
			<div class="input">
				<div class="log">
					<form action="__ACTION__" method="post">
						<div class="name"> 
							<label>学号</label><input type="text" class="text" id="value_1"
								placeholder="学号" name="username" tabindex="1"/>
						</div>
						<div class="pwd">
						<label>密 码</label><input type="password" class="text" id="value_2"
							placeholder="密码" name="password" tabindex="2"/> <input
							type="submit" class="submit" tabindex="3" value="登录"/>
								<div class="check"></div>
						</div>
					</form>
					<div class="tip"></div>
				</div>
			</div>
		</div>
		<div class="air-balloon ab-1 png"></div>
		<div class="air-balloon ab-2 png"></div>
		<div class="footer"></div>
	</div>

	<script type="text/javascript" src="__PUBLIC__/Js/jQuery.js"></script>
	<script type="text/javascript" src="__PUBLIC__/Js/fun.base.js"></script>
	<script type="text/javascript" src="__PUBLIC__/Js/script.js"></script>

</body>
</html>