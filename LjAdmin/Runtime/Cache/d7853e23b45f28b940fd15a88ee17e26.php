<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="__CSS__/admin_css.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="__PUBLIC__/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript" src="__JS__/jQuery.js"></script>
<link href="__CSS__/admin_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" >

function selectIt(action){ 
    var testform=document.getElementById("adminlist"); 
    for(var i=0 ;i<testform.elements.length;i++){ 
        if(testform.elements[i].type=="checkbox"){ 
            e=testform.elements[i]; 
            e.checked=(action=="selectAll")?1:(!e.checked); 
        } 
    }     
}

$(function(){
	$("#deladmin").click(function(){
		var bool=false;
		$(".admins").each(function(){
		      if($(this).attr("checked")=="checked")
		     {
		       bool=true;
		     }
		   });
		if(bool)
		{
		$('#adminlist').attr("action","__URL__/deladmin");
		$('#adminlist').submit();
		}
		else
			{
				alert("请勾选文章！！");
			} 
	});	
});


</script>



</head>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30">      
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="__IMAGES__/Admin/nav04.gif">
            <form  method="post" action="__APP__/admin/searchadmin">
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"></td>
			  
			  <td width="538">
				</td>
				
		    </tr>
          </table>
          </form>
          
          </td>
        </tr>
    </table></td></tr>
  <tr>
    <td>
     <br/>
     <?php if(($admin == null)): ?>暂无记录！！
     <?php else: ?>
    <table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="50%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20">
               		<input type="button" name="selectAll" value="全选" onClick="selectIt('selectAll')"/>
					<input type="button" name="invest" value="反选" onClick="selectIt()"/>
	              <input id="deladmin" type="button"  value="删除" />
	   <!--            <input id="upadmin" type="button"  value="置顶" />
	              <input id="downadmin" type="button"  value="取消置顶" /></td> -->
          	 </tr>
              <tr>
                <td height="40" class="font42">
                <br/>
				<table  width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="11" align="center" style="font-size:16px">管理员列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td  align="center" height="30">选择</td>
                    <td  align="center">账号</td>
                    <td  align="center">姓名</td> 
					<td  align="center">操作</td>
                  </tr>
                  <form name="adminlist" id="adminlist" method="post"> 
                  <?php if(is_array($admin)): $i = 0; $__LIST__ = $admin;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$admin): $mod = ($i % 2 );++$i;?><tr bgcolor="#FFFFFF">
				    <td height="20" align="center">
				    <input type="checkbox" class="admins" name="adminid[]" value="<?php echo ($admin["adminid"]); ?>"/></td>
				    <td align="center"><?php echo ($admin["adminid"]); ?></td>
                   <td align="center">
                    <a href="__URL__/getadmin/adminid/<?php echo ($admin["adminid"]); ?>" target="_self">
                    <?php echo ($admin["adminname"]); ?>
                    </a>
                    </td>
                    <td align="center" ><a href="__URL__/getadmin/adminid/<?php echo ($admin["adminid"]); ?>" target="_self">详细</a>
					</td>
                  </tr><?php endforeach; endif; else: echo "" ;endif; ?>
			
		</form>
           	 </table></td>  
           	 	
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        	<tr>
				 <td bgcolor="#FFFFFF" align="center" height="20"><?php echo ($show); ?></td>
			</tr>
        <tr>
          <td height="6"><img src="__IMAGES__/Admin/spacer.gif" width="1" height="1" /></td>
        </tr>
      </table></td>
  </tr>
</table><?php endif; ?>
</body>
</html>