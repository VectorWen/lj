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
	<div style="margin-top: 10px;">

	<div >
	<table width="100%" height="26" border="0" cellpadding="0"
			cellspacing="0" background="__PUBLIC__/Images/tbg.jpg"
			class="table">
			<tbody>
				<tr>
					<td width="35" align="center"><img
						src="__PUBLIC__/Images/sp.gif"
						width="5" height="12"></td>
					<td class="fontg" style="margin-top: 2px"><p>廉盟新闻</p></td>
				</tr>
			</tbody>
		</table>
	<div  style="height:800px">
     <div class="discuessdetail" > 
      <table class="discuessinfo" width="100%" height="500" border="0" cellpadding="0" cellspacing="0">
        <tbody> 
        <tr align="center"  > 
          <td  width="20%" class="title">评论（300）沈名宇</td>
          <td class="title" height="5%">全国高中数学联赛我校王飞获三等奖</td>
          <td align="right" class="title">分享</td>
        </tr>
        
        <tr align="left" height="75%"> 
       
        	<td ><img alt="" src="__IMAGES__/head1.jpg"  style="margin:auto;"><br/>
        			话题：12
        	</td>
          <td  colspan="2">
			 4月12日，天高气爽。仲春之初，邑大廉盟足球赛对战潮汕，关键最后几分钟，进球了！！最终以1：0险胜潮汕，进军四强！欢呼吧！呐喊吧，但我们的目标不在这里。接下来将在4月19日对战鹤山队，敬请期待！
          </td>
        </tr>
   
        </tbody> 
      </table>
      </div>
      
      <div class="review" style="margin-top:10px">
 			
		</div>
      
	
      
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