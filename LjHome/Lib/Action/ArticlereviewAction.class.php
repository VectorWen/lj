<?php
	class ArticlereviewAction extends CommonAction
	{
		/*
		 * 发布评论
		 */
		
		public function doreview()
		{ 
			$articlereview=D("Articlereview"); 
			if(!$articlereview->create()){
				$this->error($articlereview->getError());
			} 
			$lastId=$articlereview->add();
			if($lastId){
				$this->success('评论成功');
			}else{
				$this->error('评论失败');
			}
			
		}
		
		
		public function islogin()
		{
			$url = $_GET["URL"];
			var_dump($url);
			exit();
			$refer = 'http://' . $_SERVER ['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
		}
	}

?>