<?php
	class CommonAction extends Action{
	 	Public function _initialize(){
   		// 初始化的时候检查用户权限
   			if(!isset($_SESSION['adminid']) || $_SESSION['adminid']==''){
				$this->redirect('Login/login');
			}
		} 
	}
?>
