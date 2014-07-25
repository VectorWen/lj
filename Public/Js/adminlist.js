
function selectIt(action){ 
    var testform=document.getElementById("articlelist"); 
    for(var i=0 ;i<testform.elements.length;i++){ 
        if(testform.elements[i].type=="checkbox"){ 
            e=testform.elements[i]; 
            e.checked=(action=="selectAll")?1:(!e.checked); 
        } 
    }     
}

$(function(){
	$("#delArticle").click(function(){
		var bool=false;
		$(".articles").each(function(){
		      if($(this).attr("checked")=="checked")
		     {
		       bool=true;
		     }
		   });
		if(bool)
		{
		$('#articlelist').attr("action","__URL__/delArticle");
		$('#articlelist').submit();
		}
		else
			{
				alert("请勾选文章！！");
			} 
	});
	
	$("#upArticle").click(function(){
		var bool=false;
		$(".articles").each(function(){
		      if($(this).attr("checked")=="checked")
		     {
		       bool=true;
		     }
		   });
		if(bool)
		{
			$('#articlelist').attr("action","__URL__/upArticle");
			$('#articlelist').submit();
		}
		else
			{
				alert("请勾选文章！！");
			} 
	});
	$("#downArticle").click(function(){
		var bool=false;
		$(".articles").each(function(){
		      if($(this).attr("checked")=="checked")
		     {
		       bool=true;
		     }
		   });
		if(bool)
		{
		$('#articlelist').attr("action","__URL__/downArticle");
		$('#articlelist').submit();
	}
	else
		{
			alert("请勾选文章！！");
		} 
	});	
});
