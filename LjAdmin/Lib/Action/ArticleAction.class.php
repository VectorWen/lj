<?php
	class ArticleAction extends CommonAction
	{
		/*
		 * 获取发布文章页面
		 */
		function getAddArticleUI()
		{
			$this->getClass();
			$this->display(addarticle);
		}
		
		/*
		 * 发布文章
		 */
		function addArticle()
		{
			$article =D("Article"); // 实例化User对象
			//$bool=$article->create($_POST,1); // 创建数据对象
			if(!$article->create()){
				$this->error($article->getError());
			}
			
			$slidestatus=$_POST['slidestatus'];
			$filenamestatus=$_POST['filenamestatus'];
			
			if($slidestatus==1||$filenamestatus==1)//如果启用了幻灯片或者附件
			{	
				import('ORG.Net.UploadFile');
				$upload = new UploadFile();// 实例化上传类
				$upload->maxSize  = 10485760 ;// 设置附件上传大小
				$upload->uploadReplace  = true ;// 设置附件上传大小
				$upload->saveRule  = null;// 设置保存数值规则
				$upload->savePath =  './Public/Uploads/Article/';// 设置附件上传目录
				$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','doc','xls','ppt','docx','xlsx','pptx','zip','rar');// 设置附件上传类型
				if(!$upload->upload()) {// 上传错误提示错误信息
					$this->error($upload->getErrorMsg());
				}else{// 上传成功 获取上传文件信息
					$info =  $upload->getUploadFileInfo();
				}
				
				if($slidestatus==1 && $filenamestatus!=1)//如果只启用了幻灯片
				{
					$article->slidepicture=$info[0]['name'];
					
				}elseif($slidestatus!=1 && $filenamestatus==1)//如果只启用了附件
				{
					$article->filename=$info[0]['name'];
				}elseif ($slidestatus==1 && $filenamestatus==1)//如果只启用了附件和幻灯片
				{
					$article->slidepicture=$info[0]['name'];
					$article->filename=$info[1]['name'];
				}
			} 
			$article->slidestatus=$slidestatus; 
			$lastId=$article->add();
			if($lastId){
				$this->success('发布成功');
			}else{
				$this->error('发布失败');
			}
		}
		
		/*
		 * 文章列表
		 */
			function articlelist()
			{
				$this->display();
			}
		/*
		 * 搜索文章
		 */
			function searchArticle()
			{
				//把String格式的时间转换成int格式
					$firsttime=strtotime($_POST['firsttime']);
					$secondtime=strtotime($_POST['secondtime']." 23:59:59");
				 
					if($firsttime>$secondtime)
					{
						$this->error("输入时间不符合！！");
					}
					else{
					$where['addtime']=array('between',array($firsttime,$secondtime));
					$d=D('Article');
					$article=$d->where($where)->order('priority,addtime desc')->relation(true)->select();
					$this->assign("article",$article);
					$this->display(articlelist);
					}
					
			}
			/*
			 * 更新文章
			 */
			function updateArticle()
			{
				$article =D("Article"); // 实例化User对象
				
				$slidestatus=$_POST['slidestatus'];
				$filenamestatus=$_POST['filenamestatus'];
					
				if($slidestatus==1||$filenamestatus==1)//如果启用了幻灯片或者附件
				{
					import('ORG.Net.UploadFile');
					$upload = new UploadFile();// 实例化上传类
					$upload->maxSize  = 10485760 ;// 设置附件上传大小
					$upload->uploadReplace  = true ;// 设置附件上传大小
					$upload->saveRule  = null;// 设置保存数值规则
					$upload->savePath =  './Public/Uploads/Article/';// 设置附件上传目录
					$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','doc','xls','ppt','docx','xlsx','pptx','zip','rar');// 设置附件上传类型
					if(!$upload->upload()) {// 上传错误提示错误信息
						$this->error($upload->getErrorMsg());
					}else{// 上传成功 获取上传文件信息
						$info =  $upload->getUploadFileInfo();
					}
				
					if($slidestatus==1 && $filenamestatus!=1)//如果只启用了幻灯片
					{
						$article->slidepicture=$info[0]['name'];
							
					}elseif($slidestatus!=1 && $filenamestatus==1)//如果只启用了附件
					{
						$article->filename=$info[0]['name'];
					}elseif ($slidestatus==1 && $filenamestatus==1)//如果只启用了附件和幻灯片
					{
						$article->slidepicture=$info[0]['name'];
						$article->filename=$info[1]['name'];
					}
				}
					
				$article->slidestatus=$slidestatus;
				$article->title=$_POST['title'];
				$article->viewcount=$_POST['viewcount'];
				$article->origin=$_POST['origin'];
				$article->content=$_POST['content'];
				$where['articleid']=$_POST['articleid'];
					
				$lastId=$article->where($where)->save();
				if($lastId){
					$this->success('修改成功');
				}else{
					$this->error('修改失败');
				}
			}
			
			
			/*
			 * 删除文章
			 */
			function delArticle()
			{
				$arr=$_POST['articleid'];
				if($arr)
				{
				$where['articleid']=array('in',$arr);
				$d=D("Article");
				$count=$d->where($where)->relation(true)->delete();
				if($count>0)
				{
					$this->success("删除成功！！");
				}else 
				{
					$this->error("删除失败！！");
				}
				}
				else
				{
					$this->error("请选择文章！！");
				}
			}
			
			
			/*
			 * 文章置顶
			 */
			function upArticle()
			{
				$arr=$_POST['articleid'];
				if($arr)
				{
				$where['articleid']=array('in',$arr);
				$d=D("Article");
				$d->priority=2;
				$count=$d->where($where)->relation(true)->save();
				if($count>0)
				{
					$this->success("置顶成功！！");
				}else 
				{
					$this->error("置顶失败！！");
				}
				}
				else
				{
					$this->error("请选择文章！！");
				}
			}
			
			/*
			 * 文章取消置顶
			 */
			function downArticle()
			{
				$arr=$_POST['articleid'];
				if($arr)
				{
				$where['articleid']=array('in',$arr);
				$d=D("Article");
				$d->priority=3;
				$count=$d->where($where)->relation(true)->save();
				if($count>0)
				{
					$this->success("取消置顶成功！！");
				}else 
				{
					$this->error("取消置顶失败！！");
				}
				}
				else 
				{
					$this->error("请选择文章！！");
				}
				
			}
			
			
			
			/*
			 * 获取文章
			 */
			function getArticle()
			{
				$where['articleid']=$_GET['articleid'];
				$d=D('Article');
				$article=$d->where($where)->relation(true)->select();
				
				if($article!=null){
				$this->assign("article",$article);
				$this->getClass();
				$this->display(editorarticle);
				}
				else {
					$this->error("无法获取文章");
				}
			}
			
			
		
		/*
		 * 获取分类
		 */
		function getClass()
		{
			$class=M("Class");
			$arr=$class->select();
			if($arr>0)
			{
				$this->assign("class",$arr);
			}
			else 
			{
				$this->error("获取文章分类失败！！");
			}
		}
		
	}

?>