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
	<div class="content" style="width:940px">
	<link rel="stylesheet" type="text/css" href="__PUBLIC__/Css/daohang.css" />
<div class="indexleft" style="float:left;" >
	<div class="daohang2">
		<div class="lanmu-content">
		<dl class="lanmu-list">
        <dd><a href='__APP__/Website/about/' class='current'  title="同乡简介">同乡简介</a></dd>
        <dd><a href='__APP__/Article/newslist/' title="同乡新闻">同乡新闻</a></dd>
        <dd><a href='__APP__/Book/' title="教材借阅">教材借阅</a></dd>
        <dd><a href='__APP__/Activity/' title="同乡活动">同乡活动</a></dd>
        <dd><a href='__APP__/Source/' title="资源共享">资源共享</a></dd>
        <dd><a href='__APP__/Discuss/' title="同乡交流">同乡交流</a></dd>
        <dd><a href='__APP__/User/' title="用户中心">用户中心</a></dd>
        <dd><a href='__APP__/Website/contact/' title="联系我们">联系我们</a></dd>
    	</dl>
    	<a class="listmore" style="display:none;" href="javascript:;">查看更多 ↓</a>
    </div>
<script type="text/javascript">
    var LanMu = $(".lanmu-list");
    var lanMuSun = LanMu.children('dd');
    if((lanMuSun.size()) > 7){
        LanMu.children("dd:gt(5)").hide();
        $(".listmore").show();
    }
    $(".listmore").bind("click", function(){
       if(!$(".listmore").hasClass('ListMoreOn')){
           $(".listmore").addClass('ListMoreOn');
           LanMu.children("dd:gt(5)").slideDown();
            $(".listmore").html("折叠栏目 ↑")
       }else{
            $(".listmore").removeClass('ListMoreOn');
            LanMu.children("dd:gt(5)").slideUp();
            $(".listmore").html("查看更多 ↓");

       }
    })
</script>
</div>
	
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="10"></td>
									</tr>
							</table>

							<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="44" background="__PUBLIC__/Images/lefttitle22.gif"><table
												width="181" height="27" border="0" cellpadding="0"
												cellspacing="0">
												<tbody>
													<tr>
														<td width="74">&nbsp;</td>
														<td width="107" valign="bottom"><strong>用户登录</strong></td>
													</tr>
												</tbody>
											</table></td>
									</tr>
									<tr>
										<td background="__PUBLIC__/Images/left2.gif">
										
											<form method="post" action="__APP__/Login/login">
											<table width="181" height="90" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td valign="top">
														<table width="160" cellspacing="1" cellpadding="1"
															align="center">
															<tbody>
																<tr>
																	<td height="5" colspan="2" align="center"></td>
																</tr>
																<?php if($_SESSION['userid']== null): ?><tr>
																	<td height="25" width="43%" align="center">学号:</td>
																	<td height="25" width="57%"><input type="text"
																		name="userid" maxlength="20" class="input"
																		style="width: 90px"></td>
																</tr>
																<tr>
																	<td height="25" width="43%" align="center">密码:</td>
																	<td height="25" width="57%"><input type="password"
																		name="password" style="width: 90px" maxlength="20"
																		class="input"></td>
																</tr>
																<tr>
																	<td height="5" align="right" colspan="2"></td>
																</tr>
																<tr>
																	<td height="26" align="right">&nbsp;</td>
																	<td height="26" valign="top"><input name="imageField"
																		type="image" src="__PUBLIC__/Images/denglu.gif"
																		width="40" height="19" border="0"></td>
																</tr>
																<?php else: ?>
																	<tr>
																	<td>&nbsp;</td>
																	<td height="25" width="90%" >欢迎，<?php echo (session('userid')); ?>&nbsp;&nbsp;<a href="__APP__/Login/logout">退出</a></td>
																	
																	</tr><?php endif; ?>
														
														</table>
															</form>
														</td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td><img src="__PUBLIC__/Images/left.gif" width="200"
											height="6"></td>
									</tr>
									</tbody>
							</table>


							<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="10"></td>
									</tr>
							</table>
				
						
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="43" background="__PUBLIC__/Images/lefttitle.gif">
											<table width="188" height="27" border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td width="74">&nbsp;</td>
													<td width="107" valign="bottom"><span class="fontg"><strong><P>联系我们</P></strong></span></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td background="__PUBLIC__/Images/left2.gif">
										
											<table  width="190" height="90" border="0"  cellpadding="0" cellspacing="0">
												<tr>
													<td valign="top" style="padding-top: 10px; padding-left: 0px;">
														<table width="98%" border="0" cellspacing="0" cellpadding="0">

															<tr>
																<td width="15" align="center"></td>
																<td  align="center"><b><?php echo ($contact["contacttitle"]); ?></b></td>
															</tr>
															 
															<tr>
																<td width="15" align="center"></td>
																<td  background="__PUBLIC__/Images/line.gif" height=3></td>
															</tr>
															
															<tr >
																<td width="15" align="left"></td>
																<td  height="21" ><b>地址：</b><?php echo ($contact["contactaddress"]); ?></td>
															</tr>
															<tr>
																<td width="15" align="center"></td>
																<td  background="__PUBLIC__/Images/line.gif" height=3></td>
															</tr>
															
															<tr>
																<td width="15" align="left"></td>
																<td  align="left"><b>手机：</b><?php echo ($contact["contactphone"]); ?></td>
															</tr>
															<tr>
																<td width="15" align="center"></td>
																<td  background="__PUBLIC__/Images/line.gif" height=3></td>
															</tr>
															
															<tr>
																<td width="15" align="left"></td>
																<td  align="left"><b>邮编：</b><?php echo ($contact["contactpostcode"]); ?></td>
															</tr>
															<tr>
																<td width="15" align="center"></td>
																<td  background="__PUBLIC__/Images/line.gif" height=3></td>
															</tr>
															
															<tr>
																<td width="15" align="left"></td>
																<td  align="left"><b>Mail：</b><?php echo ($contact["contactemail"]); ?></td>
															</tr>
															<tr>
																<td width="15" align="center"></td>
																<td  background="__PUBLIC__/Images/line.gif" height=3></td>
															</tr>
															
															<tr>
																<td width="15" align="left"></td>
																<td  align="left"><b>网站：</b><?php echo ($contact["contactwebsite"]); ?></td>
															</tr>
															<tr>
																<td width="15" align="center"></td>
																<td  background="__PUBLIC__/Images/line.gif" height=3></td>
															</tr>
															<tr>
																<td width="15" align="center"></td>
																<td  height="8"></td>
															</tr>
												
												</table>
    						  </td>
      					</tr>
     		 	</table></td>
     		 </tr>
      <tr>
      <td><img src="__IMAGES__/left.gif"  width="200" height="6" /></td>
      </tr>
      </table> 
      
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="10"></td>
									</tr>
						</table>
						
						
					<table width="200" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="43" background="__PUBLIC__/Images/lefttitlee.gif">
											<table width="181" height="27" border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td width="74">&nbsp;</td>
													<td width="107" valign="bottom"><strong>友情链接</strong></td>
												</tr>
											</table></td>
									</tr>
									<tr>
										<td background="__PUBLIC__/Images/left2.gif" >
									<table width="190" height="90" border="0" align="left" cellpadding="0" cellspacing="0">
												<tr>
													<td align="left" style="padding-top: 10px; padding-left:20px;">
														<table border="0" cellspacing="1" cellpadding="0">
															<?php if(is_array($link)): $i = 0; $__LIST__ = $link;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$link): $mod = ($i % 2 );++$i;?><tr>
																<td width="100%" herght="30" stlye="font-size:20px">
																<a href="<?php echo ($link["link"]); ?>" target="_blank"><?php echo ($link["linktitle"]); ?></a>
																</td> 
																</tr><?php endforeach; endif; else: echo "" ;endif; ?>
																<tr><td><br/></td></tr>
															
														</table>
<!-- 
									    <table border="0" cellspacing="0" cellpadding="0">
															<tr align="center">
																<td width="100"><a href="page/link/index.htm"
																	class="more"></a></td>
															</tr>
										</table> -->
													</td>
												</tr>
								</table></td>
									</tr>
									<tr>
										<td><img src="__PUBLIC__/Images/left.gif" width="200" height="6" /></td>
									</tr>
								</table>
								
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td height="8"></td>
								</tr>
							</table>
			</div>	
	<div class="indexright"  align="right" style="float:right;width:730px" >
	<table width="727" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="413">
				<table width="100%" height="340" border="0" cellpadding="0" cellspacing="1" bgcolor="dedede"> 
					<tr> 
						<td valign="top">
							<table width="100%" height="340" border="0" align="center">
								<tr>
									<td width="100%"  valign="top"> 
										<embed height='340' width='400' pluginspage="http://www.macromedia.com/go/getflashplayer" 
											type="application/x-shockwave-flash" quality="high" menu="false" flashvars="borderwidth=400&amp;borderheight=320&amp;textheight=20&amp;
											interval_time=6&amp;pics=<?php echo ($slide["pics"]); ?> &amp;links=<?php echo ($slide["links"]); ?>
											 &amp;texts=<?php echo ($slide["texts"]); ?> wmode="opaque" src="__IMAGES__/indexpic.swf" /> 
									</td>
									<td valign="top">&nbsp;</td>
								</tr>
							</table>
						</td> 
				   </tr> 
				</table>
		 </td> 
		 <td width="10">&nbsp;</td>
		 <td width="303" valign="top" bgcolor="#FFFFFF">
			 <table width="303" border="0" cellpadding="0" cellspacing="0">
				 <tr>
					 <td>
						 <table width="100%" height="33" border="0" cellpadding="0" cellspacing="0">
							 <tr>
								 <td background="__PUBLIC__/Images/haha4.gif">
									 <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td width="20">&nbsp;</td>
											<td width="376" class="fontg"><strong><P>同乡公告</P></strong></td>
											<td width="73" class="fontg"><a href="__APP__/Article/annlist">
											<img src="__PUBLIC__/Images/more.gif" width="53" height="15" border="0" /></a></td>
											</tr>
									</table>
								</td>
							</tr>
						</table>
													
													<table width="100%" height="140" border="0" cellpadding="0" cellspacing="1">
														<tr>
															<td valign="top" style="padding-top: 6px; padding-left: 6px;">
																<table width="98%" border="0" cellspacing="0" cellpadding="0"> 
																	
																<?php if(is_array($ann)): $i = 0; $__LIST__ = $ann;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ann): $mod = ($i % 2 );++$i;?><tr>
																		<td width="28" align="center">
																		<img src="__PUBLIC__/Images/items.gif" width="16" height="14"></td>

																		<td width="245" style="display:block;white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">
																		<a href="__APP__/Article/detail/articleid/<?php echo ($ann["articleid"]); ?>" title="<?php echo ($ann["title"]); ?>"
																			class="tList" target="_self" ><?php echo ($ann["title"]); ?></a>&nbsp; 
																			</td>
																			<td>
																				<font class=fonts>[<?php echo (date('m/d',$ann["addtime"])); ?>]</font> 
																			</td>
																	</tr>
																	<tr>
																		<td colspan=2 background="__PUBLIC__/Images/line.gif" height=3></td>
																	</tr><?php endforeach; endif; else: echo "" ;endif; ?>
																</table>
																<table width="98%" border="0" cellspacing="0" cellpadding="0">
																	<tr align="right">
																		<td><a href="__APP__/Article/annlist"
																			class="more"></a></td>
																	</tr>
																</table>
																
															</td>
														</tr>
													</table>
													</td>
												</tr>
												<tr>
													<td>
													<table width="100%" height="33" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td background="__PUBLIC__/Images/haha4.gif">
															   <table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="20">&nbsp;</td>
																		<td width="376" class="fontg"><strong><P>同乡新闻</P></strong></td>
																		<td width="73" class="fontg"><a href="__APP__/Article/newslist">
																		<img src="__PUBLIC__/Images/more.gif" width="53" height="15" border="0" /></a></td>
																	</tr>
																</table>
															</td>
														</tr>
													</table> 
													
													<table width="100%"  border="0" cellpadding="0" cellspacing="1">
														<tr>
															<td valign="top" style="padding-top: 6px; padding-left: 6px;">
																<table width="98%" border="0" cellspacing="0" cellpadding="0"> 
																	
																<?php if(is_array($news)): $i = 0; $__LIST__ = $news;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$news): $mod = ($i % 2 );++$i;?><tr>
																		<td width="28" align="center">
																		<img src="__PUBLIC__/Images/items.gif" width="16" height="14"></td>

																		<td width="245" style="display:block;white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">
																		<a href="__APP__/Article/detail/articleid/<?php echo ($news["articleid"]); ?>" title="<?php echo ($news["title"]); ?>"
																			class="tList" target="_self" ><?php echo ($news["title"]); ?></a>&nbsp; 
																			</td>
																			<td>
																				<font class=fonts>[<?php echo (date('m/d',$news["addtime"])); ?>]</font> 
																			</td>
																	</tr>
																	<tr>
																		<td colspan=2 background="__PUBLIC__/Images/line.gif" height=3></td>
																	</tr><?php endforeach; endif; else: echo "" ;endif; ?>
																</table>
																<table width="98%" border="0" cellspacing="0" cellpadding="0">
																	<tr align="right">
																		<td><a href="__APP__/Article/newslist"
																			class="more"></a></td>
																	</tr>
																</table>
																
															</td>
														</tr>
													</table>
												</td>
												</tr>
												
												</table>
													</td>

											</tr>
										</table>
										
										
						 			
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td height="6"></td>
											</tr>
										</table>
										
										
										<table width="728" height="33" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td background="__PUBLIC__/Images/haha5.gif" >
																<table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="7">&nbsp;</td>
																		<td width="376" class="fontg"><strong>同乡会风采展示</strong></td>
									
																	</tr>
																</table></td>
														</tr>
													</table> 
													<table width="100%" height="130" border="0" cellpadding="0" cellspacing="1">
														<tr>
															<td valign="top"
																style="padding-top: 4px; padding-left: 3px;">
																<DIV align=center>
																	<DIV id=aaa
																		style="OVERFLOW: hidden; WIDTH: 726px; HEIGHT: 150px">
																		<DIV align=center>
																			<TABLE width=100% border=0 align=center cellPadding=0
																				cellspacing="0" cellspace="0">
																				<TBODY>
																					<TR>
																						<TD id=aaa1 vAlign=top>
																							<table cellpadding=0 cellspacing=0 width=100% align=center>
																								<tr>
																									<td valign=top>
																										<table width="100%" border="0" cellspacing="0" cellpadding="0">
																											<tr>
																										<?php if(is_array($showpicture)): $i = 0; $__LIST__ = $showpicture;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$showpicture): $mod = ($i % 2 );++$i;?><td align=center class="piclist"> 
																												<table width="100" border="0" cellspacing="0" cellpadding="1" class=table>
																													<tr>
																														<td align="center" bgcolor="#FFFFFF">
																															<a href="__APP__/Showpicture/detail/showpictureid/<?php echo ($showpicture["showpictureid"]); ?>" target="_self">
																																<img src="__IMAGES__/Show/<?php echo ($showpicture["name"]); ?>" width='160' height='120' border="0">
																															</a>
																														</td>
																													</tr>
																													<tr>
																														<td height="23" align="center" bgcolor="#f0f0f0">
																															<a href="__APP__/Showpicture/detail/showpictureid/<?php echo ($showpicture["showpictureid"]); ?>" class="pictitle" target="_self">
																																<?php echo ($showpicture["title"]); ?>
																															</a>
																														</td>
																													</tr>
																												</table> 
																											</td><?php endforeach; endif; else: echo "" ;endif; ?>
																										</tr>

																										</table></td>
																								</tr>
																							</table>
																						</TD>
																						<TD id=aaa2 vAlign=top width=1></TD>
																					</TR>
																				</TBODY>
																			</TABLE>
																		</DIV>
																	</DIV>
																</DIV> 
									<SCRIPT>
											var speed1=15 //
											aaa2.innerHTML=aaa1.innerHTML
											function Marquee(){
											if(aaa2.offsetWidth-aaa.scrollLeft<=0)
													aaa.scrollLeft-=aaa.offsetWidth
													else{
													aaa.scrollLeft++
											}
											}
											var MyMrr=setInterval(Marquee,speed1)
											aaa.onmouseover=function() {clearInterval(MyMrr)}
											aaa.onmouseout=function() {MyMrr=setInterval(Marquee,speed1)}
									</SCRIPT>
									</td>
									</tr>
									</table>
									
									<div style="height:10px"></div>

					<div style="width:724px" >
										<div style="width:481px;float: left" >
													<table width="481" height="32" border="0" cellpadding="0" cellspacing="0" background="__PUBLIC__/Images/haha.gif">
														<tr>
															<td>
																<table width="100%" height="26" border="0"
																	cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="38">&nbsp;</td>
																		<td width="362" class="fontg"><strong
																			style="color: #ffffff">同乡活动</strong></td>
																		<td width="81" class="fontg"><a
																			href="student/class/-22.html"><img
																				src="__PUBLIC__/Images/more.gif" width="53"
																				height="15" border="0" /></a></td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
													
													<table width="481" height="80" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td width="1" bgcolor="72AAD8"></td>
															<td><table width="100%" height="80" border="0"
																	cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="133" align="center" valign="top"
																			style="padding-top: 2px; padding-left: 1px;">

																			<table width="100%" border="0" cellspacing="0"
																				cellpadding="0">

																				<td align=center class="piclist">

																					<table width="20" border="0" align="center"
																						cellpadding="1" cellspacing="1" bgcolor="#e5e5e5">
																						<tr>
																							<td align="center" bgcolor="#FFFFFF"><a
																								href="__APP__/Activity"
																								target="_self"><img
																									src="__IMAGES__/1165131228.jpg"
																									width='80' height='80' border="0"></a></td>
																						</tr>
																					</table>

																				</td>

																				</tr>

																			</table>

																			<table width="100%" border="0" cellspacing="0"
																				cellpadding="0">
																				<tr align="right">
																					<td><a href="__APP__/Activity" class="more"></a></td>
																				</tr>
																			</table>
																		</td>
																		<td width="343" valign="top"
																			style="padding-top: 0px; padding-left: 6px;">
																			<table width="98%" border="0" cellspacing="0" cellpadding="0">
																				<?php if(is_array($activity)): $i = 0; $__LIST__ = $activity;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
																					<td width="22" align="center"><img
																						src="__PUBLIC__/Images/dot1.gif" 
																						width="11" height="10"></td>
																					<td height="21"><a href="__APP__/Activity/detail/activityid/<?php echo ($vo["activityid"]); ?>" 
																						class="tList" target="_self"><?php echo ($vo["title"]); ?></a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2 background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
																			</table>

																			<table width="98%" border="0" cellspacing="0"
																				cellpadding="0">
																				<tr align="right">
																					<td><a href="__APP__/Activity" class="more"></a></td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																</table></td>

															<td width="1" bgcolor="72AAD8"></td>
														</tr>
													</table>
								

		  				
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td height="1" bgcolor="72AAD8"></td>
														</tr>
													</table> 
													<table width="100%" height="32" border="0" cellpadding="0"
														cellspacing="0" background="__PUBLIC__/Images/haha.gif">
														<tr>
															<td><table width="100%" height="26" border="0"
																	cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="38">&nbsp;</td>
																		<td width="443" class="fontg"><strong><a
																				href="__APP__/Source" 
																				style="color: #ffffff"><P>热门资料</P></a></strong></td>
																		<td width="81" class="fontg"><a
																			href="__APP__/Source"><img
																				src="__PUBLIC__/Images/more.gif" width="53"
																				height="15" border="0" /></a></td>
																	</tr>
																</table></td>
														</tr>
													</table>
													<table width="100%" height="80" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td width="1" bgcolor="72AAD8"></td>
															<td><table width="100%" height="80" border="0"
																	cellpadding="0" cellspacing="1">
																	<tr>
																		<td width="134" valign="top" style="padding: 1px;"><table
																				width="100" height="137" border="0" cellpadding="0"
																				cellspacing="0">
																				<tr>
																					<td height="20" align="center"><img
																						src="__PUBLIC__/Images/zyxz.gif" 
																						width="126" height="110" /></td>
																				</tr>
																			</table></td>
																		<td width="342" valign="top"
																			style="padding-top: 6px; padding-left: 6px;">
																			<table width="98%" border="0" cellspacing="0" cellpadding="0">
																				<?php if(is_array($source)): $i = 0; $__LIST__ = $source;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$source): $mod = ($i % 2 );++$i;?><tr>
																					<td width="22" align="center">
																					<img src="__PUBLIC__/Images/titledot1.gif" width="9" height="9"></td>
																					<td height="21"><a href="__APP__/Source/getSource/sourceid/<?php echo ($source["sourceid"]); ?>" 
																						class="tList" target="_self"><?php echo ($source["showname"]); ?></a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2
																						background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
														
																			</table> 
																		
																		</td>
																	</tr>
																</table></td>
															<td width="1" bgcolor="72AAD8"></td>
														</tr>
													</table>
													
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td height="1" bgcolor="72AAD8"></td>
														</tr>
													</table>
													
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr>
															<td height="8"></td>
														</tr>
													</table>
											</div>
									
						<div style="width:233px;float: right" >
								<table width="100%" height="43" border="0" cellpadding="0" cellspacing="0" background="__PUBLIC__/Images/haha2.gif">

														<tr>
															<td><table width="100%" height="20" border="0"
																	cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="39">&nbsp;</td>
																		<td width="141" valign="top" class="fontg"><strong><P>热门话题</P></strong></td>
																		<td width="53" align="center" valign="top"
																			class="fontg"><a href="zuopin/main/index.htm"><img
																				src="__PUBLIC__/Images/more.gif" width="53"
																				height="15" border="0" /></a><a
																			href="jiaoshi/class/index.htm"></a></td>
																	</tr>
																</table></td>
														</tr>
													</table>

													<table width="100%" height="80" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td width="1" bgcolor="72AAD8"></td>
															<td align="center"><table width="95%" height="90"
																	border="0" cellpadding="0" cellspacing="0">
																	<tr>
																		<td valign="top"
																			style="padding-top: 6px; padding-left: 6px;">
																			<table width="98%" border="0" cellspacing="0"
																				cellpadding="0">
																				<tr>
																					<td width="22" align="center"><img
																						src="__PUBLIC__/Images/titledot.gif" width="9"
																						height="9"></td>
																					<td height="21"><a href="zuopin/html/-87.html"
																						class="tList" target="_self">我们赢在今天</a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2
																						background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr>

																				<tr>
																					<td width="22" align="center"><img
																						src="__PUBLIC__/Images/titledot.gif" width="9"
																						height="9"></td>
																					<td height="21"><a href="zuopin/html/-86.html"
																						class="tList" target="_self">我们挥洒泪下</a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2
																						background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr> 
																				
																				<tr>
																					<td width="22" align="center"><img
																						src="__PUBLIC__/Images/titledot.gif" width="9"
																						height="9"></td>
																					<td height="21"><a href="zuopin/html/-85.html"
																						class="tList" target="_self">我们团结一心</a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2
																						background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr>
 
																				<tr>
																					<td width="22" align="center"><img
																						src="__PUBLIC__/Images/titledot.gif"
																						tppabs="http://serv.wygk.net.cn/school/__PUBLIC__/Images/titledot.gif"
																						width="9" height="9"></td>
																					<td height="21"><a href="zuopin/html/-84.html"
																						tppabs="http://serv.wygk.net.cn/school/zuopin/html/?84.html"
																						class="tList" target="_self">同乡温暖我的心</a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2
																						background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr>

																			</table>

																		</td>
																	</tr>
																</table>
													
													</table>


													<table width="100%" height="43" border="0" cellpadding="0"
														cellspacing="0" background="__PUBLIC__/Images/haha2.gif">

														<tr>
															<td><table width="100%" height="20" border="0"
																	cellpadding="0" cellspacing="0">
																	<tr>
																		<td width="39">&nbsp;</td>
																		<td width="141" valign="top" class="fontg"><strong><P>热门书籍</P></strong></td>
																		<td width="53" align="center" valign="top"
																			class="fontg"><a href="__APP__/Book"><img
																				src="__PUBLIC__/Images/more.gif" width="53"
																				height="15" border="0" /></a></td>
																	</tr>
																</table></td>
														</tr>
													</table>

													<table width="100%" height="80" border="0" cellpadding="0"
														cellspacing="0">
														<tr>
															<td width="1" bgcolor="72AAD8"></td>
															<td align="center">
															<table width="95%" height="90" border="0" cellpadding="0" cellspacing="0">
																	<tr>
																		<td valign="top" style="padding-top: 6px; padding-left: 6px;">
																			<table width="98%" border="0" cellspacing="0" cellpadding="0">
																				<?php if(is_array($book)): $i = 0; $__LIST__ = $book;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$book): $mod = ($i % 2 );++$i;?><tr>
																					<td width="22" align="center"><img
																						src="__PUBLIC__/Images/titledot.gif" width="9"
																						height="9"></td>
																					<td height="21"><a href="__APP__/Book/details?borrowid=<?php echo ($book["borrowid"]); ?>"
																						class="tList" target="_self"><?php echo ($book["book"]["bookname"]); ?></a>&nbsp;</td>
																				</tr>
																				<tr>
																					<td colspan=2
																						background="__PUBLIC__/Images/line.gif" height=3></td>
																				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
																			</table>

																		</td>
																	</tr>

																</table>
													
													</table>
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