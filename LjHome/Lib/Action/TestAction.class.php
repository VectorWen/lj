<?php
// 本类由系统自动生成，仅供测试用途
	class TestAction extends Action {
		//显示首页数据
		public function index() {
			 $m=M('Book');
			 dump($m);
			 echo md5('123456');
		}
	
	}
	?>