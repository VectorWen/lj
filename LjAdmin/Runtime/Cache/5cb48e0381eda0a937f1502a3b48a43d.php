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
  <form action="__URL__/addArticle/" method="post" name="form" enctype="multipart/form-data">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >发布文章</th>
  </tr>
  <tr>
    <td class="CPanel" align="center">
		<table border="0" cellpadding="0" cellspacing="0" style="width:90%">
			<TR>
				<TD width="100%" >
					<fieldset style="height:100%;float-left:auto;float-right:auto;">
						<legend>文章详情</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">  
						  <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>文章标题：</label>
						    </td>
						    <td align="left"> 
						    <input name='title' type="text" size="40" id="title"  />*
						    </td> 
						   </tr>
						   
						  <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>文章分类：</label>
						    </td>
						    <td align="left"> 
						   		<select name="classid" >
						   			<?php if(is_array($class)): $i = 0; $__LIST__ = $class;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$class): $mod = ($i % 2 );++$i;?><option value="<?php echo ($class["classid"]); ?>"><?php echo ($class["name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
						   		</select>
						    </td> 
						   </tr>
					   
					   	  <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>幻灯图片：</label>
						    </td>
						    <td align="left"> 
						    	<input name="slidestatus" type="checkbox" id="cover" value="1"/>启用
						    	<span id="uppanel" style="display:none; width:40px">
							    	<input name="slidepicture" size="40" type="file" id="file" /> 
							    </span>
						    </td> 
						   </tr>
						   
					   	  <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>文章附件：</label>
						    </td>
						    <td align="left"> 
						    	<input name="filenamestatus" type="checkbox" id="filename" value="1"/>启用
						    	<span id="panel" style="display:none; width:40px">
							    	<input name="filename" size="40" type="file" id="file" /> 
							    </span>
						    </td> 
						   </tr>
						   
						   <tr>
						    <td  align="right" width="20%" height="30">
						    	<label>文章来源：</label>
						    </td>
						    <td align="left"> 
						    <input name="origin" type="text" size="40" value="五邑大学廉江同乡会"  />
						    </td> 
						   </tr>
					   
						  	<tr>
						    	<td  align="right" width="20%"  height="30">
						    		<label>文章内容：</label>
						    	</td>
						    	<td align="left"> 
						    		<textarea name="content"  style="height:100px;width:680px;visibility:hidden;"></textarea>
						    	</td> 
						    </tr>
					  
					 		<tr>
					 			<td colspan="2" align="center">
					 				<br/>
					 				<input type="submit" name="Submit" value="发布" />　
					 				<input type="reset" name="Submit" value="重置" />　
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