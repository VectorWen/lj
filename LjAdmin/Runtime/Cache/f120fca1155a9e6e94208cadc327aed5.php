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
    var testform=document.getElementById("sourcelist"); 
    for(var i=0 ;i<testform.elements.length;i++){ 
        if(testform.elements[i].type=="checkbox"){ 
            e=testform.elements[i]; 
            e.checked=(action=="selectAll")?1:(!e.checked); 
        } 
    }     
}

$(function(){
	$("#delSource").click(function(){
		var bool=false;
		$(".sources").each(function(){
		      if($(this).attr("checked")=="checked")
		     {
		     	bool=true;
		     }
		   });
		if(bool)
		{
			$('#sourcelist').attr("action","__URL__/delSource");
			$('#sourcelist').submit();
		}
		else
			{
				alert("请勾选资源！！");
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
            <form  method="post" action="__APP__/Source/searchSource">
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		    <tr>
			  <td width="21"><img src="__IMAGES__/Admin/ico07.gif" width="20" height="18" /></td>
			  <td width="538">资源：按时间：
					<input type="text" name="firsttime" class="Wdate" id="d4321" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\',{d:-1});}'})"/>
					<span class="newfont06">至</span>
					<input type="text" name="secondtime" class="Wdate" id="d4322" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d4321\',{d:1});}'})"/>
				<input type="submit" class="right-button02" value="查 询" /></td>
		    </tr>
          </table>
          </form>
          
          </td>
        </tr>
    </table></td></tr>
  <tr>
    <td>
     <br/>
     <?php if(($source == null)): ?>暂无记录！！
     <?php else: ?>
    <table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20">
               		<input type="button" name="selectAll" value="全选" onClick="selectIt('selectAll')"/>
					<input type="button" name="invest" value="反选" onClick="selectIt()"/>
	              <input id="delSource" type="button"  value="删除" />
	           <!--    <input id="upSubmit" type="button"  value="置顶" />
	              <input id="downSubmit" type="button"  value="取消置顶" /></td> -->
          	 </tr>
              <tr>
                <td height="40" class="font42">
                <br/>
				<table  width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="9" align="center" style="font-size:16px">资源列表</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				    <td  align="center" height="30">选择</td>
                    <td  align="center">资源名称</td> 
					<td  align="center">上传人</td>
					<td  align="center">上传时间</td>
                    <td  align="center">资源大小</td>
					<td  align="center">下载次数</td>
					<td  align="center">资源状态</td>
                  </tr>
                  <form name="bdkey" id="sourcelist" method="post"> 
                  <?php if(is_array($source)): $i = 0; $__LIST__ = $source;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$source): $mod = ($i % 2 );++$i;?><tr bgcolor="#FFFFFF">
				    <td height="20" align="center"><input type="checkbox" class="sources" name="filename[]" value="<?php echo ($source["filename"]); ?>"/></td>
				   
                   <td align="left" width="300">
                    <a href="__ROOT__/index.php/source/detail/sourceid/<?php echo ($source["sourceid"]); ?>" target="_blank">
                   <?php echo ($source["showname"]); ?> </a>
                    </td>
					<td align="center"><?php echo ($source["username"]); ?></td>
                    <td align="center"><?php echo (date('Y-m-d',$source["addtime"])); ?></td> 
                    <td align="center">
	                    <?php if(($source["size"] >= 1048576)): echo (round($source['size']/1048576, 2)); ?>MB 
						<?php elseif(($source["size"] >= 1024)): ?> <?php echo (round($source['size']/1024, 2)); ?>KB 
							<?php else: echo ($source["size"]); ?>B<?php endif; ?> 
					</td>
                    <td align="center"><?php echo ($source["downloadcount"]); ?></td>
                    
                    <td align="center">
                    	<?php if(($source["status"] == 0)): ?>正常
                    	<?php else: ?>已删除<?php endif; ?>
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