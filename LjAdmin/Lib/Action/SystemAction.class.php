<?php
	class SystemAction extends CommonAction
	{
		function index()
		{
			$this->display();
		}
		
		/*
		 * 获取系统信息
		 */
		function system()
		{
			$group='system';
			$websiteModel=new WebsiteModel();
			$system=$websiteModel->getinfo($group);
			$this->assign("system",$system);
			$this->display();
		}
		/*
		 * 获取联系信息
		 */
		function contact()
		{
			$group='contact';
			$websiteModel=new WebsiteModel();
			$contact=$websiteModel->getinfo($group);
			$this->assign("contact",$contact);
			$this->display();
		}
		/*
		 * 获取关于信息
		 */
		function about()
		{
			$group='about';
			$websiteModel=new WebsiteModel();
			$about=$websiteModel->getinfo($group);
			$this->assign("about",$about);
			$this->display();
		}
		
		/*
		 * 保存系统信息
		 */
		function savesysteminfo()
		{	
			$sql1="update lj_website set `value` ="."'".$_POST['systemname']."'"." where `key`='systemname'";
			$sql2="update lj_website set `value` ="."'".$_POST['systemlink']."'"." where `key`='systemlink'";
			$sql3="update lj_website set `value` ="."'".$_POST['systemicp']."'"." where `key`='systemicp'";
			$sql4="update lj_website set `value` ="."'".$_POST['systemcopyright']."'"." where `key`='systemcopyright'";
			
			$m=M('Website');
			$arr1=$m->query($sql1);
			$arr2=$m->query($sql2);
			$arr3=$m->query($sql3);
			$arr4=$m->query($sql4);
			
			
			if($arr1>0 && $arr2>0 && $arr3>0 && $arr4>0)
			{
				$this->success("更新数据成功");
			}
			else 
			{
				$this->error("更新数据错误");
			}
		}
		/*
		 * 保存联系信息
		 */
		function savecontactinfo()
		{	
			$sql1="update lj_website set `value` ="."'".$_POST['contacttitle']."'"." where `key`='contacttitle'";
			$sql2="update lj_website set `value` ="."'".$_POST['contactaddress']."'"." where `key`='contactaddress'";
			$sql3="update lj_website set `value` ="."'".$_POST['contactphone']."'"." where `key`='contactphone'";
			$sql4="update lj_website set `value` ="."'".$_POST['contactemail']."'"." where `key`='contactemail'";
			$sql5="update lj_website set `value` ="."'".$_POST['contactpostcode']."'"." where `key`='contactpostcode'";
			$sql6="update lj_website set `value` ="."'".$_POST['contactwebsite']."'"." where `key`='contactwebsite'";
			
			$m=M('Website');
			$arr1=$m->query($sql1);
			$arr2=$m->query($sql2);
			$arr3=$m->query($sql3);
			$arr4=$m->query($sql4);
			$arr5=$m->query($sql5);
			$arr6=$m->query($sql6);
			
			
			if($arr1>0 && $arr2>0 && $arr3>0 && $arr4>0 && $arr5>0 && $arr6>0)
			{
				$this->success("更新数据成功");
			}
			else 
			{
				$this->error("更新数据错误");
			}
		}
		/*
		 * 保存关于信息
		 */
		function saveaboutinfo()
		{	
			$sql1="update lj_website set `value` ="."'".$_POST['abouttitle']."'"." where `key`='abouttitle'";
			$sql2="update lj_website set `value` ="."'".$_POST['content']."'"." where `key`='aboutcontent'";
			
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