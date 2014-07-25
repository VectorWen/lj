<?php
class BookAction extends Action {
	/**
	 * 可借书列表
	 */
	public function booklist() {
		$this->display ();
	}
	
	/*
	 * 获取资源声明
	*/
	function bookstate()
	{
		$group='book';
		$websiteModel=new WebsiteModel();
		$book=$websiteModel->getinfo($group);
		$this->assign("book",$book);
		$this->display();
	}
	
	/*
	 * 保存资源声明
	*/
	
	function saveBookState()
	{
		$sql1="update lj_website set `value` ="."'".$_POST['bookstatetitle']."'"." where `key`='bookstatetitle'";
		$sql2="update lj_website set `value` ="."'".$_POST['content']."'"." where `key`='bookstatecontent'";
	
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