<?php
// 本类由系统自动生成，仅供测试用途
	class IndexAction extends CommonAction {
		//显示首页数据
		public function index() {
			$this->assign('isLogin',$this->isLogin);
			$this->display();
		}
		
	}
	?>