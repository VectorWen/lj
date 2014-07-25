<?php
	class SourceAction extends CommonAction
	{
		function sourcelist()
		{
			$this->display(sourcelist);
		}
		
		
		/*
		 * 搜索资源
		 */
		function searchSource()
		{
			$firsttime=strtotime($_POST['firsttime']);
			$secondtime=strtotime($_POST['secondtime']." 23:59:59");
			
			if($firsttime>$secondtime)
			{
				$this->error("输入时间不符合！！");
			}
			else{
				$where['addtime']=array('between',array($firsttime,$secondtime));
				$d=D('Source');
				$source=$d->where($where)->order('addtime desc')->relation(true)->select();
				$this->assign("source",$source);
				$this->display(sourcelist);
			}
		}
		
		/*
		 * 删除资源
		 */
		function delSource() 
		{
			$arr=$_POST['filename'];
			
			
			foreach ($arr as $filename)
			{
			$file="./Public/Uploads/Source/".$filename;
			
			$news=unlink($file);//删除文件
			
			}
			
			$d=D("Source");
			$where['filename']=array('in',$arr);
			
			$count=$d->where($where)->delete();	
			if($count>1)
			{
				$this->success("删除资源成功");
			}
			else 
			{
				$this->error("删除资源失败");
			}		
		}
		
		
		/*
		 * 获取资源声明
		 */
		function sourceState()
		{
			$group='source';
			$websiteModel=new WebsiteModel();
			$source=$websiteModel->getinfo($group);
			$this->assign("source",$source);
			$this->display();
		}
		
		/*
		 * 保存资源声明
		 */
		
		function saveSourceState()
		{
			$sql1="update lj_website set `value` ="."'".$_POST['sourcestatetitle']."'"." where `key`='sourcestatetitle'";
			$sql2="update lj_website set `value` ="."'".$_POST['content']."'"." where `key`='sourcestatecontent'";
				
			$m=M('Website');
			$arr1=$m->query($sql1);
			$arr2=$m->query($sql2);
				
			if($arr1>0 && $arr2>0)
			{
				$this->success("更新数据成功");
			}
			else
			{
				$this->error("更新数据错误");
			}
		}
	}
?>