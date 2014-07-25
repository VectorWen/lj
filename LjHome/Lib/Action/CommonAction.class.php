<?php
	class CommonAction extends Action{
		Public function _initialize(){ 
   		// 初始化的时候检查用户权限
   			if(!isset($_SESSION['userid']) || $_SESSION['userid']==''){
   				$refer = 'http://' . $_SERVER ['HTTP_HOST'] . $_SERVER['REQUEST_URI']; 
   				cookie('refer',$refer,300);
				$this->redirect('Login/login');
			}
		}
	}
?>
