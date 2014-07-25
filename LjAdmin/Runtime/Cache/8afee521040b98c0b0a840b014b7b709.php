<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" rev="stylesheet" href="__CSS__/admin_style.css" type="text/css" media="all"/>
<script language="javascript" type="text/javascript" src="__JS__/jQuery.js"></script>

<script language="JavaScript" type="text/javascript">
$(document).ready(function(){

	  $("#add").click(function(){
		 var val= $('input[name="userid"]').val();
		 if(val!=null && val !="")
			 {
				  $("#addform").attr("action","__URL__/addUser/");
				  $("#addform").submit();
			 }
		 else{
			    alert("学号不能为空");
			    $("#addform").focus();
		 }
	  });
	
	  $("#includeusers").click(function(){
	      $("#addform").attr("action","__URL__/includeUsers/");
		  $("#addform").submit();
	  });
	  
	  $("#downloaddemo").click(function(){
		  window.location='__PUBLIC__/Uploads/exceldemo.xls';
	  });
	  
		var error=new Array();
		$('input[name="userid"]').blur(function(){
			var userid=$(this).val();
    		var regex = /[a-zA-Z0-9]\w{7,}/;
    		if (!regex.exec(userid))
    		{// 非数字
    	          alert('学号格式不正确');
    	          $(this).focus();//聚焦在输入域
    			  return false;
    			}
			$.get('__URL__/checkId',{'userid':userid},function(data){
				if(data=='不允许'){
					error['userid']=1;
					$('#umessage').remove();
					$('input[name="userid"]').after('<span id="umessage" style="color:red">学号已存在</span>');
					$('input[name="userid"]').focus();
				}else{
					error['userid']=0;
					$('#umessage').remove();
				}
			});
		    
		    	
		});
		
	});
</script>
</head>

<body class="ContentBody">
  <form id="addform"  method="post" enctype="multipart/form-data">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >添加用户</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="40%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>添加单个用户</legend>
					  <table border="0" cellpadding="2" cellspacing="1" >  
						  <tr>
						    <td  align="right"  height="30">
						    	<label>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
						    </td>
						    <td align="left"> 
						    <input id="userinfo" name="userid" type="text" class="text" /> 
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right"  height="30">
						    	<label>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
						    </td>
						    <td align="left"> 
						    <input id="userinfo" name="username" type="text"  class="text"/>
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right"  height="30">
						    	<label>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
						    </td>
						    <td align="left"> 
						   	<input type="radio" name="sex" value="0" checked='checked'/>男<input type="radio" name="sex" value="1"/>女
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right"  height="30">
						    	<label>专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</label>
						    </td>
						    <td align="left"> 
						    <input id="userinfo" name="specialty" type="text"  class="text" />
						    </td>
						  </tr>
					  <tr>
						    <td  align="right"  height="30">
						    	<label>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</label>
						    </td>
						    <td align="left"> 
						    <input id="userinfo" name="phone" type="text" class="text" />
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right"  height="30">
						    	<label>短&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
						    </td>
						    <td align="left"> 
						    	<input id="userinfo" name="shortphone" type="text" class="text" />
						    </td>
						  </tr>
						  
						  <tr>
						    <td  align="right"  height="30">
						    	<label>入学年份：</label>
						    </td>
						    <td align="left"> 
						    	<input id="userinfo" name="entryyear" type="text" class="text" />
						    </td>
						  </tr>
						  <tr>
						    <td  align="right"  height="30">
						    	<label>学校地址：</label>
						    </td>
						    <td align="left"> 
						    <input id="userinfo" name="schooladdress" type="text"  class="text" />
						    </td>
						  </tr>
					
						  <tr>
						    <td  align="right"  height="30">
						    	<label>家乡地址：</label>
						    </td>
						    <td align="left"> 
						    <input id="userinfo" name="homeaddress" type="text" class="text" />
						    </td>
						  </tr>
					
					 	<tr>
					 	<td>&nbsp;</td>
					 		<td colspan="2">
					 			<br/>
					 		   <span id="btn2" >
						 			<input type="button" id="add" value="保存"/>　
					 		   </span>
					 		</td>
					 		
					 	</tr>
					  </table>
					 
			  <br />
				</fieldset>			
				</TD> 
				
				<td>
				   <fieldset style="height:396px;float-left:auto;float-right:auto;">
						<legend>批量导入用户</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:90%" >  
						  <tr>
						    <td  align="center"  height="30">
						    	<label>文件：</label><input type="file" name="users"/>
						    	<input type="button" value="导入" id="includeusers"/><span style="color: red;">格式支持.xls,.xlsx<span/>
						    </td>				 
						  </tr>
						  <tr>
						  	<td><input type="button" value="下载模版" id="downloaddemo"/></td>
						  </tr>
						  <tr>
						  
						    <td  align="center">
						    	<img src="__IMAGES__/Admin/excel.jpg" width="520" height="157"/>
						    </td>
						    					 
						  </tr>
						  </table>
				 </fieldset>
				</td>
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