<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>五邑大学廉江同乡会</title>
<link href="__IMAGES__/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="__PUBLIC__/Css/style.css" />
<script type="text/javascript" src="__PUBLIC__/Js/jquery.min.js"></script>
<style>
	.content
		{
			
			margin-top: 10px;
			
		}
	.title
		{
			font-size:20px;
			font-weight:bold;
			
		}
</style>

<script type="text/javascript">
	$(function(){
		$(".searchbtn").click(function(){
			var a = $("#type").val();
			if(a=='news')
				{
				  $("#search").attr("action","__APP__/Article/search");
				}
			else if(a=='book')
				{
				  $("#search").attr("action","__APP__/Book/search");
				}
			else if(a=='source')
				{
				  $("#search").attr("action","__APP__/Source/search");
				}
			else if(a=='book')
				{
				  $("#activity").attr("action","__APP__/Activity/search");
				}
			else if(a=='book')
				{
				  $("#discuss").attr("action","__APP__/Discuss/search");
				}
		});
		
	});
</script>

</head>

<body>
	<div class="top">
		<img src="__PUBLIC__/Images/top1.jpg" class="logo" />
		<div class="animation" >
			<object width="411" height="93">
				<param name="movie" value="__PUBLIC__/Images/tm2.swf" />
				<param name="wmode" value="transparent" />
			</object>
		</div>
		<div class="navigation">
			<table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td width="10"><img src="__PUBLIC__/Images/jj.gif" width="10"
							height="44" /></td>
						<td background="__PUBLIC__/Images/menubg2.jpg">
							<table height="35" border="0" cellpadding="0" cellspacing="0"
								background="__PUBLIC__/Images/menubg2.jpg">
								<tbody>
									<tr> 
										<td align="center" style="width:10px"></td>
										<td align="center" style="font-size: 16px"><a
											href="__ROOT__/" class="menunow" target="_self">网站首页</a></td> 
											
										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										<td align="center" style="padding-top: 1px">
										<a href="__APP__/Website/about" class="menu" target="_self">关于同乡</a></td>


										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										<td align="center" style="padding-top: 1px"><a
											href="__APP__/Article/newslist"
											class="menu" target="_self">新闻中心</a></td>


										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										<td align="center" style="padding-top: 1px"><a
											href="__APP__/Book/" class="menu" target="_self">教材借阅</a></td>


										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										<td align="center" style="padding-top: 1px"><a
											href="__APP__/Activity/"	class="menu" target="_self">同乡活动</a></td>


										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										<td align="center" style="padding-top: 1px">
										<a href="__APP__/Source/" class="menu" target="_self">资源共享</a></td>

										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										 <td align="center" style="padding-top: 1px"><a
											href="__APP__/Discuss/"
											class="menu" target="_self">同乡交流</a></td>
										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>
											
										<td align="center" style="padding-top: 1px"><a
											href="__APP__/User/"
											class="menu" target="_self">用户中心</a></td>


										<td width="10" align="center"><img
											src="__PUBLIC__/Images/menudivid.gif" width="2" height="44" /></td>

										<td align="center" style="padding-top: 1px"><a
											href="__APP__/Website/contact/" class="menu" target="_self">联系我们</a></td>


										<td align="center" style="padding-top: 1px" width="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>


										</td>

										<td align="right" style="padding-top: 1px">
											<form  name="search" id="search" method="post">
											<table width="10" height="39" border="0" cellpadding="0" cellspacing="0"> 
												<tbody>
													<tr>
														<td width="10">
															<input type="text" name="key" class="input" placeholder="站内搜索" size="15"/>
														</td>
														<td width="10">
															<select name="type" id="type">
																<option value="news">新闻</option>
																<option value="book">教材</option>
																<option value="source">资源</option>
																<option value="activity">活动</option>
																<option value="discuss">社区</option>
															</select>
														</td>
														<td>
														 <input name="imageField" class="searchbtn" type="image" src="__PUBLIC__/Images/search3.jpg" border="0"/>
														
														</td>
													</tr> 
												</tbody> 
											</table>
											</form>
										</td>
											<td align="center" style="width:15px"></td>
									</tr>
								</tbody>
							</table>
						</td>
						
						<td width="10">
							<img src="__PUBLIC__/Images/jr.gif" width="10" height="44"/></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script>
$(document).ready(function(){
	$("#searchbook").click(function(){ 
		/* var tmp = document.getElementsByName(input["inputisbn"]).val();*/
			//alert("tmp"); 
			$("#book_search_form").submit();
		});
	$("#savebook").click(function(){ 
		  $("#addbookform").submit();
	});
});

</script>

<div class="content" style="margin-top: 10px;height: 750px">
	<div class="classifynavigation">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
			<td height="40" background="__PUBLIC__/Images/lef.gif"><table
					width="203" height="27" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td width="60">&nbsp;</td>
							<td width="107" valign="bottom"><strong>分类导航</strong></td>
						</tr>
					</tbody>
				</table></td>
		</tr>
		<tr>
			<td align="center" valign="top"
				background="__PUBLIC__/Images/lef2.gif" >
					<table width="188" height="90" border="0" align="center" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td valign="top">
								<table width="100%" border="0" cellpadding="3" cellspacing="0">

									<tbody>
										<tr class="list">

											<td height="27" width="100%"
												style="padding-left: 10px; border-bottom: 1px #d2d2d2 solid">


												<img src="__PUBLIC__/Images/items.gif"
												width="16" height="14"> <a href="__URL__/"
												class="class" target="_self">可借列表</a>&nbsp;

											</td>

										</tr>

										<tr class="list">

											<td height="27" width="100%"
												style="padding-left: 10px; border-bottom: 1px #d2d2d2 solid">


												<img src="__PUBLIC__/Images/items.gif"
												width="16" height="14"> <a href="__URL__/borrow"
												class="class" target="_self">已借的书</a>&nbsp;

											</td>

										</tr>

										<tr class="list">

											<td height="27" width="100%"
												style="padding-left: 10px; border-bottom: 1px #d2d2d2 solid">


												<img src="__PUBLIC__/Images/items.gif"
												width="16" height="14"> <a href="__URL__/mybook"
												class="class" target="_self">我的借架</a>&nbsp;

											</td>

										</tr>
										<tr class="list">

											<td height="27" width="100%"
												style="padding-left: 10px; border-bottom: 1px #d2d2d2 solid">


												<img src="__PUBLIC__/Images/items.gif"
												width="16" height="14"> <a href="__URL__/explain"
												class="class" target="_self">借书说明</a>&nbsp;

											</td>

										</tr>

									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr>
							<td height="16"></td>
						</tr>
					</tbody>
				</table></td>
		</tr>
		<tr>
			<td><img src="__PUBLIC__/Images/lef3.gif" width="203" height="8"></td>
		</tr>
	</tbody>
</table>

	</div>
	<div class="classifycontent">

		<table width="100%" height="26" border="0" cellpadding="0"
			cellspacing="0" background="__PUBLIC__/Images/tbg.jpg" 
			class="table">
			<tbody>
				<tr>
					<td width="35" align="center"><img
						src="__PUBLIC__/Images/sp.gif"
						width="5" height="12"></td>
					<td class="fontg" style="margin-top: 2px"><a href="__ROOT__/"  target="_self" >首页</a>&gt;&gt;教材借阅&gt;&gt;上传教材</td>
				</tr>
			</tbody>
		</table>

		<div>
			<form action="__URL__/searchbook" method="get" id="book_search_form">
				<table width="40%" height="26" border="0" cellpadding="0">
					<tr>
					<td>ISBN号：<input type="text" name="isbn" placeholder="条形码里面的数字" class="input" value="<?php echo ($book[isbn]); ?>" /></td>
					<td><img id="searchbook" src="__BUTTON__/searchbtn.png" class="btn"/></td>
					</tr>
				</table> 
			</form>
			<?php if($search == 1): ?><form action="__URL__/addbook" method="post" id="addbookform">
				<ul> 
					<li><img class="imgc" src="<?php echo ($book[cover]); ?>"> <input
						type="hidden" name="cover" value="<?php echo ($book[cover]); ?>" /> <input
						type="hidden" name="isbn" value="<?php echo ($book[isbn]); ?>" />

						<p>
							<b><?php echo ($book[bookname]); ?></b> <input type="hidden" name="bookname"
								value="<?php echo ($book[bookname]); ?>" />
						</p>
						<p>作者：<?php echo ($book[author]); ?></p> <input type="hidden" name="author"
						value="<?php echo ($book[author]); ?>" />
						<p>价格：<?php echo ($book[price]); ?></p> <input type="hidden" name="price"
						value="<?php echo ($book[price]); ?>" />
						<p>来源：五邑大学廉江同乡会</p>
						<p><?php echo ($book[introduction]); ?></p></li>
					<input type="hidden" name="introduction" value="<?php echo ($book[introduction]); ?>" />
				</ul>
				<img id="savebook" src="__BUTTON__/uploadbtn.png"/>
			</form>
			<?php elseif($search == 2): ?>
			<p>没有找到相关书籍内容</p><?php endif; ?>
		</div>



	</div>
</div>


	<div class="down">
		<table width="940" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td height="6" bgcolor="#FFFFFF"></td>
			</tr>
		</table>
		
		<table cellspacing=0 cellpadding=0 width="940" border=0 align="center" height="29" background="__PUBLIC__/Images/menubg.gif">
			<tbody>
				<tr>
					<td colspan="2" align="center" valign="bottom">
						<table border="0" cellspacing="0" cellpadding="0">

							<tr>

								<td width=1><img src="__PUBLIC__/Images/split1.gif"
									width="1" height="12"/></td>

								<td class="btmenu"
									style="padding-left: 8px; padding-right: 8px;" align=center
									nowrap><a href="page/search/index.php.htm" class="btmenu"
									target="_self">全站搜索</a></td>

								<td width=1><img src="__PUBLIC__/Images/split1.gif"
									width="1" height="12"/></td>

								<td class="btmenu"
									style="padding-left: 8px; padding-right: 8px;" align="center"
									nowrap><a href="page/link/index.php.htm" class="btmenu"
									target="_self">友情链接</a></td>

								<td width=1><img src="__PUBLIC__/Images/split1.gif"
									width="1" height="12"/></td>
							</tr>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="940" height="25" border="0" align="center"
			cellpadding="0" cellspacing="0" background="__PUBLIC__/Images/m2.gif">
			<tr>
				<td align="center">五邑大学廉江同乡会 2014 版权所有 粤ICP备03023960号   
					Copyright &copy;2014 电话：1890288978x</td>
			</tr>
		</table>
	</div>
</body>
</html>