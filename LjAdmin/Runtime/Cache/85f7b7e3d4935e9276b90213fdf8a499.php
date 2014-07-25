<?php if (!defined('THINK_PATH')) exit();?><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>项目管理系统 by www.mycodes.net</title>
<style type="text/css">
body {
	width:198px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(__IMAGES__/Admin/left.gif);
}
</style>
<link href="__CSS__/admin_css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="__IMAGES__/Admin/ico05.gif";//图片ico04为白色的正方形 
	for(var i=1;i<30;i++)
	{ 
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="__IMAGES__/Admin/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2); 
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="__IMAGES__/Admin/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="__IMAGES__/Admin/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="__IMAGES__/Admin/ico04.gif";
	}
}

</SCRIPT>

<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="__IMAGES__/Admin/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="__IMAGES__/Admin/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02"><?php echo (session('adminid')); ?></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="__APP__/Login/doLogout" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  网站设置   -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >网站设置</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/System/system" target="mainFrame" class="left-font03" onClick="tupian('20');">站点设置</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu21" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/System/contact" target="mainFrame" class="left-font03" onClick="tupian('21');">联系我们</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu19" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/System/about" target="mainFrame" class="left-font03" onClick="tupian('19');">关于同乡</a></td>
				</tr>
      </table>
		<!--  网站设置结束    -->
 
		<!--  文章管理开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >文章管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu17" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="__APP__/Article/getAddArticleUI" target="mainFrame" class="left-font03" onClick="tupian('17');">发布文章</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu18" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="__APP__/Article/articlelist" target="mainFrame" class="left-font03" onClick="tupian('18');">文章列表</a></td>
				</tr>
		
				<!-- <tr>
				  <td width="9%" height="20" ><img id="xiaotu24" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="listxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('24');">类目管理
							</a></td>
				</tr> -->
      </table>
		<!--  文章管理结束    -->


	<!--  教材管理开始    -->
        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >教材管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu1" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/Book/booklist" target="mainFrame" class="left-font03" onClick="tupian('1');">教材列表</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/Book/bookstate" target="mainFrame" class="left-font03" onClick="tupian('4');">教材声明</a></td>
				</tr>
				<!-- <tr>
				  <td width="9%" height="20" ><img id="xiaotu2" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listxuqiu.htm" target="mainFrame" class="left-font03" onClick="tupian('2');">项目需求信息查看</a></td>
				</tr> -->
      </table>
		<!--  教材管理结束    -->

	  <!--  同乡活动开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >活动管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu3" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="__APP__/Activity/getaddActivityUI" target="mainFrame" class="left-font03" onClick="tupian('3');">发布活动</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu5" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="__APP__/Activity/activitylist" target="mainFrame" class="left-font03" onClick="tupian('5');">活动列表</a></td>
        </tr>
		<!-- <tr>
          <td width="9%" height="20" ><img id="xiaotu6" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="__APP__/Activity/statistics" target="mainFrame" class="left-font03" onClick="tupian('6');">信息统计</a></td>
        </tr> -->
      </table>

	  <!--  同乡活动结束    -->

	  <!--  资源管理开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >资源管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu8" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="__APP__/Source/sourcelist" target="mainFrame" class="left-font03" onClick="tupian('8');">资源列表</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu9" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="__APP__/Source/sourcestate" target="mainFrame" class="left-font03" onClick="tupian('9');">资源声明</a></td>
        </tr>
        
      </table>
	
	  <!--  资源管理结束    -->

	   <!--  同乡交流开始    
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img4" id="img4" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('4');" >讨论管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree4" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
		<tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listGongZiType.htm" target="mainFrame" class="left-font03" onClick="tupian('11');">讨论列表</a></td>
        </tr>
	  	<tr>
          <td width="9%" height="20" ><img id="xiaotu12" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="listMonthYuanGongGongZi.htm" target="mainFrame" class="left-font03" onClick="tupian('12');">讨论声明</a></td>
        </tr>
      </table>

        同乡交流结束    -->

	  <!-- 用户管理开始 -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%"><img name="img5" id="img5" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('5');">用户管理</a></td>
                </tr>
            </table></td>
          </tr>
      </table>

	  <table id="subtree5" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu13" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="__APP__/User/userlist" target="mainFrame" class="left-font03" onClick="tupian('13');">用户列表</a></td>
        </tr>
        <tr>
          <td height="20"><img id="xiaotu14" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
          <td><a href="__APP__/User/getadduserui" target="mainFrame" class="left-font03" onClick="tupian('14');">添加用户</a></td>
        </tr>
      </table>
	  <!-- 管理系统结束-->

	 <!--个人信息管理开始-->

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img9" id="img9" src="__IMAGES__/Admin/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >管理员管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="22" ><img id="xiaotu22" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/Admin/getAdmin/adminid/<?php echo (session('adminid')); ?>" target="mainFrame" class="left-font03" 
						onClick="tupian('22');">管理员信息</a></td>
				</tr>
				<tr>
				  <td width="9%" height="23" ><img id="xiaotu23" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/Admin/adminlist" target="mainFrame" class="left-font03" 
						onClick="tupian('23');">管理员列表</a></td>
				</tr>
				<tr>
				  <td width="9%" height="23" ><img id="xiaotu24" src="__IMAGES__/Admin/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="__APP__/Admin/getaddAdminUI" target="mainFrame" class="left-font03" 
						onClick="tupian('24');">添加管理员</a></td>
				</tr>
      </table>
		<!--  个人信息结束    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>