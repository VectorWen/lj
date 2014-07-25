<?php
	class SourceAction extends CommonAction
	{
		/**
		 * 资源共享首页
		 */
		function index()
		{
			$where['status']=0;
			$source=$this->showSource($where);
			$this->assign('source',$source);
			$this->display();
		}
		
		/**
		 * 我的资源
		 */
		function mySource()
		{
			$where['status']=0;
			$where['userid']=$_SESSION['userid'];
			$source=$this->showSource($where);
			$this->assign('source',$source);
			$this->display();
		}
		
		/**
		 * 上传资源
		 */
		function upload()
		{
			$source =D("Source"); // 实例化User对象
			$source->create(); // 创建数据对象
			
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->maxSize  = -1;//50*1024*1024 ;// 设置附件上传大小
			$upload->allowExts  = array();// 设置附件上传类型
			$upload->savePath =  './Public/Uploads/Source/';// 设置附件上传目录
			if(!$upload->upload()) 
				{// 上传错误提示错误信息
					$this->error($upload->getErrorMsg());
				}else
				{// 上传成功 获取上传文件信息
					$info =  $upload->getUploadFileInfo();
				}

				$source->showname=$info[0]['name'];
				$source->filename=$info[0]['savename'];
				$source->size=$info[0]['size'];
				
				$lastId=$source->add();
				if($lastId){
					$this->success('上传成功');
				}else{
					$this->error('上传失败');
				}
		}
		
		/*
		 * 下载资源
		 */
		public function download(){
			$where['sourceid']=$_GET['sourceid'];
			$d=D("Source"); 
			$source=$d->where($where)->select();
			$file=$source[0]['filename'];
			$file_dir ='./Public/Uploads/Source/'.$file; 
			$filename=pathinfo($file); 
			if (!file_exists($file_dir)){
				header("Content-type: text/html; charset=utf-8");
				$this->error("资源不存在！！");
			} else {
				$file = fopen($file_dir,"r");
				header("Content-type: application/octet-stream");
				header("Content-Length: ".filesize($file_dir));
				header("Accept-Ranges: bytes");
				header("Accept-Length: ".filesize($file_dir));
				header("Content-Disposition: attachment; filename=".$source[0]['showname']);
				echo fread($file, filesize($file_dir));
				fclose($file);
				$data['downloadcount']=$source[0]['downloadcount']+1;
				$d->where($where)->save($data);
			}
		}
		/**
		 * 删除资源
		 */
		function delSource()
		{
			$where['sourceid']=$_GET['souid'];
			$data['soustatus']=1;
			$source=D("Source");
			$count=$source->where($where)->find();
			if($count>0)
			{
				$count=$source->where($where)->save($data);
				if($count>0)
				{
					$this->success('删除资源成功！！');
				}
				else 
				{
					$this->error("删除资源失败！！");
				}
				
			}
			else
			{
				$this->error('资源不存在！！');
			}
			
		}
		
		/**
		 * 查询资源
		 */
		function showSource($where)
		{
			import('ORG.Util.Page');// 导入分页类
			$m = D("Source");
			$count=$m->where($where)->count();//获取数据的总数
			$page  = new Page($count,10);//
			$page->setConfig('header','个文件');
			$page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
					%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
			$show=$page->show();//返回分页信息
			$source=$m->where($where)->order('addtime desc')->relation(true)->limit($page->firstRow.','.$page->listRows)->select();
			$this->assign('show',$show);
			if($source>0)
			{
			return $source;
			}
			else
			 {
				$this->error("查询不到资源");
			}
		}
		
		/*
		 * 获取一个资源
		 */
		
		function getsource()
		{
			$where['status']=0;
			$where['sourceid']=$_GET['sourceid'];
			$source=D('source');
			$arr=$source->where($where)->select();
			$this->assign("source",$arr);
			$this->display(index);
		}
		
		/*
		 * 资源声明
		 */
		function state()
		{
			$group='source';
			$websiteModel= new WebsiteModel();
			$source=$websiteModel->getinfo($group);
			$this->assign('source',$source);
			$this->display();
		}
		
		/*
		 * 搜索资源
		*/
		function search()
		{
			$key=$_POST['key'];
			$d=D("Source");
			$where['showname']=array('like','%'.$key.'%');
			$arr=$d->where($where)->relation(true)->select();
		
			$this->assign("source",$arr);
			$this->display(index);
		}
		
	}	
?>