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
	
<link rel="stylesheet" href="__PUBLIC__/Editor/themes/default/default.css" />
<script charset="utf-8" src="__PUBLIC__/Editor/kindeditor-min.js"></script>
<script charset="utf-8" src="__PUBLIC__/Editor/themes/lang/zh_CN.js"></script>
<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					resizeType : 1,
					allowPreviewEmoticons : true,
					items : [
						 'emoticons'],
					afterBlur:function(){this.sync();},
				});
			});
</script>

<style>
		form input{
			height:21px;
		}
		form img {
						position:relative;
						top:8px;
		}
		textarea 
				{
				display: block;
				}
			.message{
				margin-top:5px;
			}
			.code.submit
			{
				margin-top:0px;
			}
</style>

<script type="text/javascript">
$(document).ready(function(){
	  $("#reviewarticle").click(function(){
		  $("#doreview").submit();
	  });
	  
	 /*  $("textarea.content").onmousedown(function(){
		  alert("1");
		  //$("#review").show();
	  });  */
});
</script>

<div class="content" style="margin-top: 10px;">
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
				background="__PUBLIC__/Images/lef2.gif"><table
					width="188" height="90" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tbody>
						<tr>
							<td valign="top">
								<table width="100%" border="0" cellpadding="3" cellspacing="0">

									<tbody>
										<tr class="list">

											<td height="27" width="100%"
												style="padding-left: 10px; border-bottom: 1px #d2d2d2 solid">


												<img src="__PUBLIC__/Images/items.gif" width="16"
												height="14"> <a href="__URL__/annlist" class="class"
												target="_self">廉盟公告</a>&nbsp;

											</td>

										</tr>
										<tr class="list">

											<td height="27" width="100%"
												style="padding-left: 10px; border-bottom: 1px #d2d2d2 solid">


												<img src="__PUBLIC__/Images/items.gif" width="16"
												height="14"> <a href="__URL__/newslist" class="class"
												target="_self">廉盟新闻</a>&nbsp;

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
					<td class="fontg" style="margin-top: 2px"><p>
					<a herf="__APP__/Index" target="_self">首页</a>&gt;&gt;<?php echo ($news[0]["name"]); ?>&gt;&gt;</p></td>
				</tr>
			</tbody>
		</table>

     <div class="newdetail" > 
      <table class="newsinfo" width="100%" height="22" border="0" align="center" cellpadding="3" cellspacing="3" >
        <tbody> 
        <tr align="center"> 
          <td class="title" ><?php echo ($news[0]["title"]); ?></td>
        </tr>
        <tr align="left"> 
          <td >
			<?php echo ($news[0]["content"]); ?>
          </td>
        </tr>
         <tr align="left"> 
          <td >
          	<br/>
			<?php echo (date('Y-m-d H:i:s',$news[0]["addtime"])); ?> | 作者：<?php echo ($news[0]["adminname"]); ?> | 浏览: <?php echo ($news[0]["viewcount"]); ?> | 来源: <?php echo ($news[0]["origin"]); ?>
         	<br/><br/>
          </td>
        </tr>
        </tbody> 
      </table>
      </div>
    
    
      
	<div class="articlereview" style="margin-top:30px"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="30" background="__IMAGES__/detailtitle.gif" class="table">
        <tbody>
        <tr> 
          <td width="10" align="center"></td>
          <td> 最新评论</td>
        </tr>
      </tbody></table>
      <table width="100%" border="0" align="center" cellpadding="3" cellspacing="3">
        <tbody> 
        <tr valign="top"> 
          <td height="150" colspan="2" class="downinfo">
			<table width="98%" border="0" cellspacing="0" cellpadding="0">  
		  		<tbody>
		  	<?php if(is_array($articlereview)): $i = 0; $__LIST__ = $articlereview;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$articlereview): $mod = ($i % 2 );++$i;?><tr>
		    <td width="60" align="center" rowspan="2">
		    	<img src="__IMAGES__/Head/<?php echo ($articlereview["middlepicture"]); ?>" title="<?php echo ($articlereview["username"]); ?>" width="50" height="50"/>
		    
		    </td>
		    <td height="50" align="left"><?php echo ($articlereview["userid"]); ?><br/><?php echo ($articlereview["username"]); ?></td>
		    <td height="50" align="right"><?php echo ($articlereview["content"]); ?></td>
		  </tr>
		  <tr>
		    <td height="10" align="right" colspan="2"><?php echo (date('m-d H:i',$articlereview["addtime"])); ?></td>
		  </tr> 
		  <tr>
		    <td colspan="3" background="__IMAGES__/line.gif" height="3"></td>
		  </tr><?php endforeach; endif; else: echo "" ;endif; ?>
		 <tr>
			 <td colspan="2" align="center"><?php echo ($show); ?></td>
		 </tr>
		  </tbody>
  </table> 
</td>
        </tr>
        </tbody> 
      </table>
     
		</div>
		
		  <div class="review" style="margin-top:20px">
 			<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="30" background="__IMAGES__/detailtitle.gif" class="table">
        <tbody>
        <tr> 
          <td width="10" align="center"></td>
          <td> 发表评论</td>
        </tr>
      </tbody>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table">
		<tr>
			<td width="40%" align="center" height="100">
				<?php if(($_SESSION['userid']== null)): ?><img src="__IMAGES__/Head/defaultm.png"  width="50" height="50"/>
				<?php else: ?>
				<img src="__IMAGES__/Head/<?php echo ($user[0]["middlepicture"]); ?>" title="<?php echo ($user[0]["username"]); ?>" width="50" height="50"/><br/>
				 <?php echo ($user[0]["userid"]); ?><br/><?php echo ($user[0]["username"]); endif; ?>
			</td>
			<td>
				<form action="__APP__/Articlereview/doreview/" method="post" id="doreview">
					<input type="hidden" name="articleid" value="<?php echo ($news[0]["articleid"]); ?>"/> 
					<?php if(($_SESSION['userid']== null)): ?><label>需要您<a href="__APP__/Login/dologin" class="class" style="color:blue;" target="_self">登陆</a>才能发表评论</label>
					<?php else: ?> 
						<textarea name="content" style='width:150px;height:100px;visibility:hidden'></textarea> 
						
						<input type="text" name="code" size="2" id='code'/>
						<img src='__APP__/Public/code?w=45&h=25' onclick='this.src=this.src+"?"+Math.random()' id='code'/> 
						<img src="__BUTTON__/reviewbtn.png" id="reviewarticle" class="btn"/><?php endif; ?>
					
					
					<br/><br/>
				</form>
			</td>
		</tr>
		</table>
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