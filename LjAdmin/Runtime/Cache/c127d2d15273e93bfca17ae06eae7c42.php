<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" rev="stylesheet" href="__CSS__/admin_style.css" type="text/css" media="all" />
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
<script charset="utf-8" src="__JS__/jquery.min.js"></script>
<script charset="utf-8" src="__PUBLIC__/Editor/themes/lang/zh_CN.js"></script>
<script>
			var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
					allowFileManager : true,
					afterBlur:function(){this.sync();},
				});
			});
</script>

<script>
	$(function(){
		$("#booksave").click(function(){
			$("#bookform").submit();
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
  <form action="__URL__/saveBookState/" method="post" id="bookform" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >使用声明</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<tr>
				<td width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>声明信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
					  <tr>
					    <td  align="right" width="20%" height="30">
					    	<label>声明名称：</label>
					    </td>
					    <td align="left"> 
					    <input name='bookstatetitle' type="text" size="40" class="text"  value="<?php echo ($book["bookstatetitle"]); ?>" />
					    </td> 
					    </tr>
					  <tr>
					    <td  align="right" width="20%"  height="30">
					    	<label>声明内容：</label>
					    </td>
					    <td align="left"> 
					    	<textarea name="content" style="height:100px;width:680px;visibility:hidden;"><?php echo ($book["bookstatecontent"]); ?></textarea>
					    </td> 
					    </tr>
					  
					 	<tr>
					 		<td colspan="2" align="center">
					 			<br/>
					 			<img id="booksave" src="__BUTTON__/savesetbtn.png" class="btn"/>　
					 		</td>
					 	</tr>
					  </table>
			  <br />
				</fieldset>			
				</td> 
		</tr>
		</table>
	 </td>
  </tr> 
		<tr>
			<td colspan="2" align="center" height="50px"> 
			&nbsp;
			</td>
		</tr>
		</table>
</div>
</form>
</body>
</html>