<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" rev="stylesheet" href="__CSS__/admin_style.css" type="text/css" media="all"/>
<script language="javascript" type="text/javascript" src="__JS__/jQuery.js"></script>

<script language="JavaScript" type="text/javascript">
$(document).ready(function(){
	  $("#adminmodify").click(function(){
		  $("input#admininfo").attr("readOnly",false);
		  
		  $("#btn3").hide()
		  $("#btn4").show()
	  });
	  
	  $("#saveadmin").click(function(){
		  $("#saveform").attr("action","__URL__/saveadmin/");
		  $("#saveform").submit();
	  });
	  
	  $("#resetpwd").click(function(){
		  window.location='__URL__/getpasswordUI';
			
	  });
	});
</script>
<style type="text/css">
#admininfo{
	border-left:0px;
	border-top:0px;
	border-right:0px;
	border-bottom:1px;
}
</style>
</head>

<body class="ContentBody">
  <form id="saveform"  method="post" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >管理员详细</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>管理员信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
						  <tr>
						    <td  align="right" width="30%" height="30">
						    	<label>管理员账号：</label>
						    </td>
						    <td align="left"> 
						    <label><?php echo ($admin[0]["adminid"]); ?></label>
						    <input id="admininfo" name="adminid" type="hidden" value="<?php echo ($admin[0]["adminid"]); ?>" />
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right" width="30%" height="30">
						    	<label>管理员名称：</label>
						    </td>
						    <td align="left"> 
						    <input id="admininfo" name="adminname" type="text" readonly="readonly" class="text"  value="<?php echo ($admin[0]["adminname"]); ?>" />
						    </td>
						  </tr>
				
					 	<tr>
					 	<td>&nbsp;</td>
					 		<td colspan="2">
					 			<br/>
					 		   <span id="btn3">
						 			<input type="button" id="adminmodify" value="修改信息"/>　
						 			<input type="button" id="resetpwd" value="修改密码" />
					 		   </span>
					 		   <span id="btn4" style="display:none">
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