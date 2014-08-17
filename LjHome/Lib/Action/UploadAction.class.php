<?php
class UploadAction extends CommonAction {
	
	public function index(){
		$this->display();
	}
	
	
	/**
	 * 上传图片, 文件放在缓冲区Images/tmp/userid
	 */
	public function upload() {
		if(!$this->isLogin){
			$info['statu'] = '500';
			$info['msg'] = '请先登录';
			$this->ajaxReturn ($info,'JSON');
			exit();
		}
		
		
		import ( 'ORG.Net.UploadFile' );
		$upload = new UploadFile (); // 实例化上传类
		$upload->maxSize = 1024 * 1024; // 设置附件上传大小
		$upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->savePath = './Public/Images/tmp/'.$_SESSION['userid'].'/'; //设置附件上传目录
		$upload->thumb = true;
		
		if (! $upload->upload ()) { //上传错误提示错误信息
			$info['statu'] = '500';
			$info['msg'] = $upload->getErrorMsg ();
			$this->ajaxReturn ($info,'JSON');
			exit;
		} else { // 上传成功 获取上传文件信息
			$info = $upload->getUploadFileInfo ();
			$this->assign("info",$info);
			//var_dump ( $info );
			
			$info[0]['path'] = __ROOT__.'/'.$info[0]['savepath'].$info[0]['savename'];
			
			$this->ajaxReturn ($info[0],'JSON');
		}
	}
}








