<?php
	class CommonAction extends Action{
		public function _initialize(){ 
   		// 初始化的时候检查用户权限
   			if(!isset($_SESSION['user_id']) || $_SESSION['user_id']==''){
   				$refer = 'http://' . $_SERVER ['HTTP_HOST'] . $_SERVER['REQUEST_URI']; 
   				cookie('refer',$refer,300);
				$this->redirect('Login/login');
			}
		}
	}
?>
