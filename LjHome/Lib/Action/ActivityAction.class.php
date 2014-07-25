<?php
     class ActivityAction extends Action
     {
     	/*
     	 * 活动首页
     	 */
     	public function index()
     	{
     		$activity=D("Activity");
     		$where['status']=0;
     		import('ORG.Util.Page');// 导入分页类
     		$count=$activity->count();//获取数据的总数
     		$page  = new Page($count,15);//
     		$page->setConfig('header','个');
     		$page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
				%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
     		$show=$page->show();//返回分页信息
     		$arr=$activity->where($where)->order('priority,begintime desc')->relation(true)->limit($page->firstRow.','.$page->listRows)->select();
     		$this->assign('show',$show);
     		$this->assign("activity",$arr);
     		$this->display(activitylist);
     	}
     	
     	/*
     	 * 活动内容
     	 */
     	
     	public function detail()
     	{
     		$activityid=$_GET['activityid'];
     		if(isset($activityid))
     		{
	     		$activity=D("Activity");
	     		$where['status']=0;
	     		$where['activityid']=$activityid;
	     		
	     		$arr=$activity->where($where)->relation(true)->select();
	     		
	     		$this->assign("activity",$arr);
	     		
	     		//是否报名
	     		$this->isjoin();
	     		//活动记录信息
	     		$this->getactivityinfo($activityid);
	     		
	     		$this->display();
     		}
     	}
     	
     	/*
     	 * 报名
     	 */
     	public function join()
     	{
     		$where['activityid']=$_POST['activityid'];
     		$where['userid']=$_SESSION['userid'];
     		$activityinfo=D("Activityinfo");
     		$count=$activityinfo->where($where)->count();
     		if($count>0)
     		{
     			$this->error("你已经报名，请刷新页面重试");
     		}
     		else 
     		{
	     		$activityinfo->create();
	     		$tmp=$activityinfo->add();
	     		if($tmp)
	     		{
	     			$this->success("报名成功，请记住活动时间，不要错过活动哦!");
	     		}
	     		else 
	     		{
	     			$this->error("报名失败，请刷新页面重试");
	     		}
     		}
     	}
     	
     	/*
     	 * 取消报名
     	 */
     	public function canceljoin()
     	{
     		$where['activityid']=$_POST['activityid'];
     		$where['userid']=$_SESSION['userid'];
     		$activityinfo=D("Activityinfo");
     		$count=$activityinfo->where($where)->delete();
     		if($count>0)
     		{
     			$this->success("取消报名成功！");
     		}
     		else
     		{
     			$this->error("取消报名失败，请与负责人联系。");
     		}
     	}
     	
     	
     	/*
     	 * 获取报名信息
     	 */
     	public function getactivityinfo($activityid)
     	{
     		$activityinfo=D("Activityinfo");
     		$where['activityid']=$activityid;
     		$int=$activityinfo->where($where)->sum("joinnumber");//统计报名人数
     		$this->assign("count",$int);
     		
     		
     		
     		$arr=$activityinfo->where($where)->relation(true)->select();
     		$this->assign("activityinfo",$arr);
     	}
     	
     	/*
     	 * 判断是否已经报名了
     	 */
     	public function isjoin()
     	{
     		$where['activityid']=$_GET['activityid'];
     		$where['userid']=$_SESSION['userid'];
     		$activityinfo=D("Activityinfo");
     		$arr=$activityinfo->field('status')->where($where)->select(); 
     		$this->assign("status",$arr);
     	}
     	
     	public function state()
     	{
     		$this->display();
     	}
     	
     }