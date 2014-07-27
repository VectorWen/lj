<?php
// 本类由系统自动生成，仅供测试用途
	class TestAction extends Action {
		//显示首页数据
		public function index() {
			 $m=D('Feedback');
			 $arr = $m->relation("Feedback_comment")->where('feedback_id=7')->select();
			 dump($arr);
			 echo $arr;
			 //echo md5('123456');
		}
		public function d() {
			$m=D('Feedback');
			$arr = $m->relation("Feedback_comment")->where('feedback_id=7')->delete();
			dump($arr);
			echo $arr;
			//echo md5('123456');
		}
	
	}
	?>