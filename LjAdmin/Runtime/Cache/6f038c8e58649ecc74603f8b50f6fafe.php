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
  <form action="__URL__/savecontactinfo/" method="post" name="form" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >联系我们</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>同乡信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>同乡名称：</label>
					    </td>
					    <td align="left"> 
					    <input name='contacttitle' type="text" size="40" class="text"  value="<?php echo ($contact["contacttitle"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%"  height="30">
					    	<label>同乡地址：</label>
					    </td>
					    <td align="left"> 
					    <input name='contactaddress' type="text" size="40" class="text"  value="<?php echo ($contact["contactaddress"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>手机号码：</label>
					    </td>
					    <td align="left"> 
					    <input name='contactphone' type="text" size="40" class="text"  value="<?php echo ($contact["contactphone"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>邮政编码：</label>
					    </td>
					    <td align="left"> 
					    <input name='contactpostcode' type="text" size="40" class="text"  value="<?php echo ($contact["contactpostcode"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>电子邮件：</label>
					    </td>
					    <td align="left"> 
					    <input name='contactemail' type="text" size="40" class="text"  value="<?php echo ($contact["contactemail"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="30%" height="30">
					    	<label>网站域名：</label>
					    </td>
					    <td align="left"> 
					    <input name='contactwebsite' type="text" size="40" class="text"  value="<?php echo ($contact["contactwebsite"]); ?>" />
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