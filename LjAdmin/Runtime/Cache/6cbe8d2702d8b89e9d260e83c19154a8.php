<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" rev="stylesheet" href="__CSS__/admin_style.css" type="text/css" media="all" />

<script language="JavaScript" type="text/javascript">
function tishi()
{
  var a=confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
  if(a!=true)return false;
  window.open("冲突页.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}

</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="__URL__/savesysteminfo/" method="post" name="form" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >站点设置</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>站点信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>网站名称：</label>
					    </td>
					    <td align="left"> 
					    <input name='systemname' type="text" size="40" class="text"  value="<?php echo ($system["systemname"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%"  height="30">
					    	<label>网站地址：</label>
					    </td>
					    <td align="left"> 
					    <input name='systemlink' type="text" size="40" class="text"  value="<?php echo ($system["systemlink"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>备案号码：</label>
					    </td>
					    <td align="left"> 
					    <input name='systemicp' type="text" size="40" class="text"  value="<?php echo ($system["systemicp"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>版权说明：</label>
					    </td>
					    <td align="left"> 
					    <textarea name='systemcopyright' class="text" rows="5" cols="40" ><?php echo ($system["systemcopyright"]); ?>
					    </textarea>
					    </td> 
					    </tr>
					 	
					 	<tr>
					 		<td colspan="2" align="center">
					 			<br/>
					 			<input type="submit" name="Submit" value="保存设置" />　
					 		</td>
					 	</tr>
					  </table>
			  <br />
				</fieldset>			
				</TD> 
		</TR>
		</TABLE> 
	 </td>
  </tr> 
		<TR>
			<TD colspan="2" align="center" height="50px">
			
			&nbsp;
			</TD>
		</TR>
		</TABLE>
	
	
	 </td>
  </tr>
  
  
  
  </table>

</div>
</form>
</body>
</html>