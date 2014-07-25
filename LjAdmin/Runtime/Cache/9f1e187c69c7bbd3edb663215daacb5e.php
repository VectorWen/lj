<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" rev="stylesheet" href="__CSS__/admin_style.css" type="text/css" media="all"/>
<script language="javascript" type="text/javascript" src="__JS__/jQuery.js"></script>

<script language="JavaScript" type="text/javascript">
$(document).ready(function(){ 
	  $("#saveadmin").click(function(){
		  $("#saveform").attr("action","__URL__/updatepassword/");
		  $("#saveform").submit();
	  });
	  
	  $('input[name="renewpassword"]').blur(function(){
			var repwd=$(this).val();
			var pwd=$('input[name="newpassword"]').val();
			if(repwd==null || repwd=="")
				{
				    alert("重复密码不能为空！！");
				}
			 else if(pwd!=repwd)
				{
				   alert("两次输入的密码不一致");
				   $(this).focus();
				}
		});
		
		$('input[name="newpassword"]').blur(function(){
			var p=$(this).val();
			var regex = /[a-zA-Z0-9]\w{6,}/;
		 	if(p==null || p=="")
			{
			    alert("密码不能为空！！");
			 
			}
		 	 else if (!regex.exec(p))
  		{// 非数字
  	          alert('密码至少7个字符以上');
  	          $(this).focus();//聚焦在输入域
  			  return false;
  		}  
		});
});
</script>

</head>

<body class="ContentBody">
  <form id="saveform"  method="post" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >修改密码</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>密码详细</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
						  <tr>
						    <td  align="right" width="30%" height="30">
						    	<label>原密码：</label>
						    </td>
						    <td align="left">  
						    <input id="admininfo" name="oldpassword" type="password" class="text" />
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right" width="30%" height="30">
						    	<label>新密码：</label>
						    </td>
						    <td align="left"> 
						    <input id="admininfo" name="newpassword" type="password" class="text" />
						    </td>
						  </tr>
						  <tr>
						    <td  align="right" width="30%" height="30">
						    	<label>重复密码：</label>
						    </td>
						    <td align="left"> 
						    <input id="admininfo" name="renewpassword" type="password" class="text" />
						    </td>
						  </tr>
				
					 	<tr>
					 	<td>&nbsp;</td>
					 		<td colspan="2">
					 			<br/> 
					 		   <span id="btn4">
						 			<input type="button" id="saveadmin" value="保存"/>　
					 		   </span>
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

</div>
</form>
</body>
</html>