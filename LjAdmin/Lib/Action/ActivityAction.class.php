<?php
class ActivityAction extends Action {
	/**
	 * 活动列表
	 */
	public function activitylist() {
		$this->display ();
	}
	
	public function getaddactivityUI() {
		$this->display (addactivity);
	}
	
	/**
	 * 搜索文章
	 */
	function searchActivity()
	{
		$key=$_GET["key"];
		$activity=D("Activity");
		$activity->where($where)->select();
		
			
	}
	
	
	/**
	 * 发布活动
	 */
	public function addactivity()
	{
		$activity=D("Activity");
		if(!$activity->create()){
		 		$this->error($activity->getError());
		 	} 
		$laterid=$activity->add();
		if($laterid)
		{
			$this->success("发布活动成功");
		}
		else 
		{
			$this->error("发布活动失败");
		}
	}
}

?>