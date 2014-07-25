<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" rev="stylesheet" href="__CSS__/admin_style.css" type="text/css" media="all" />
<script type="text/javascript" src="__PUBLIC__/Js/jquery.js"></script>
		<style>
			form {
				margin: 0;
			}
			textarea {
				display: block;
			}
		</style>
		<link rel="stylesheet" href="__PUBLIC__/Editor/themes/default/default.css" />
		<script charset="utf-8" src="__PUBLIC__/Editor/kindeditor-min.js"></script>
		<script charset="utf-8" src="__PUBLIC__/Editor/themes/lang/zh_CN.js"></script>
		<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					allowFileManager : true
				});
			});
		</script>
<script language="javascript" type="text/javascript" src="__PUBLIC__/My97DatePicker/WdatePicker.js"></script>		
<script type="text/javascript" language="javascript">
		$(document).ready(function(){
			 $("#title").blur(function(){
				   var val=$("#title").val();  
				   if(val==""||val==null){
					   alert("标题不能为空");
				   }
				  });
			
			$("#cover").click(function(){
		     if($("#cover").attr("checked")=="checked"){
		       $("#uppanel").show();
		     }else
		     {
		     $("#uppanel").hide();
		     }
		  });
			
			$("#filename").click(function(){
		     if($("#filename").attr("checked")=="checked"){
		       $("#panel").show();
		     }else
		     {
		     $("#panel").hide();
		     }
		  });
		});
</script>
    	 
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>

<body class="ContentBody">
  <form action="__URL__/addActivity/" method="post" name="form" enctype="multipart/form-data">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >发起活动</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>活动详情</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
						  <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>活动标题：</label>
						    </td>
						    <td align="left"> 
						    <input name='title' type="text" size="40" id="title"  />*
						    </td> 
						   </tr>
						   
						  <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>活动时间：</label>
						    </td>
						    <td align="left"> 
						    <input type="text" name="begintime" size="15" class="Wdate" id="d4321" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\',{d:0});}',dateFmt:'yyyy-MM-dd HH:mm:ss'})"/>
					<span class="newfont06">&nbsp;至&nbsp;</span>
					<input type="text" name="endtime" size="15" class="Wdate" id="d4322" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4321\',{d:0});}',dateFmt:'yyyy-MM-dd HH:mm:ss'})"/>
						    </td> 
						   </tr>
					    
						   <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>活动费用：</label>
						    </td>
						    <td align="left"> 
						    <input name="cost" type="text" size="40"  />
						    </td> 
						   </tr>
						   <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>活动地点：</label>
						    </td>
						    <td align="left"> 
						    <input name="address" type="text" size="40"  />
						    </td> 
						   </tr>
					   
						  	<tr>
						    	<td  align="right" width="20%"  height="30">
						    		<label>活动内容：</label>
						    	</td>
						    	<td align="left"> 
						    		<textarea name="content"  style="height:100px;width:680px;visibility:hidden;"></textarea>
						    	</td> 
						    </tr>
					  
					 		<tr>
					 			<td colspan="2" align="center">
					 				<br/>
					 				<input type="submit" name="Submit" value="发布" />　
					 				<input type="reset" name="reset" value="重置" />　
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