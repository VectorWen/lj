<?php
class WebsiteAction extends Action
{
	
	
	/*
	 * 同乡会介绍
	 */
	public function about() 
	{
		$group='about';
		$websiteModel=new WebsiteModel();
		$about=$websiteModel->getinfo($group);
		$this->assign("about",$about);
		$this->display ();
	}
	
	/*
	 * 同乡联系方式
	 */
	public function contact()
	{
	
		$group='contact';
		$websiteModel=new WebsiteModel();
		$contact=$websiteModel->getinfo($group);
		$this->assign("contact",$contact);
		$this->display ();
	}
	

}

?>