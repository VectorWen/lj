<?php
class ActivityAction extends NeedLoginAction {
	
	/**
	 * 活动的首页
	 */
	public function index() {
		$this->display ();
	}
	
	public function del(){
		$path = './Public/Images/tmp/'.$_SESSION['userid'].'/';
		if (! deleteDir( $path )) {
			echo '删除失败';
		}else{
			echo '删除成功';
		}
	}
	
	/**
	 * 添加话题
	 */
	public function addTheme() {
		if (! isset ( $_POST ['title'] ) || ! isset ( $_POST ['content'] )) {
			$this->error ( "请输入话题标题和话题描述" );
			exit ();
		}
		
		$data ['title'] = $_POST ['title'];
		$data ['content'] = $_POST ['content'];
		
		// 有话题类型就发来
		if (isset ( $_POST ['type'] )) {
			$data ['status'] = $_POST ['type'];
		} else {
			$data ['status'] = 1; // 不发来默认是发布状态
		}
		
		if (isset ( $_POST ['img'] )) {
			$source = './Public/Images/tmp/'.$_SESSION['userid'].'/'. $_POST ['img'];
			$destination = './Public/Images/upload/'. $_POST ['img'];
			$path = './Public/Images/tmp/'.$_SESSION['userid'].'/';
			if (file_exists ( $source )) {
				if (copy ( $source, $destination )) {
					$data ['image'] = $destination;
					if (! deleteDir( $path )) {
					}
				}
			}
		}
		
		$m = M ( 'Activity' );
		$ok = $m->data ( $data )->add ();
		
		if ($ok > 0) {
			$this->redirect ( "Activity/index" );
		} else {
			$this->error ( "添加失败" );
		}
		
		exit ();
	}
	
	/**
	 * 发起话题，或活动的静态页面显示
	 */
	public function sponsor() {
		$type = $_GET ['type'];
		if ($type == 1) {
			;
		} else {
			$this->display ();
		}
	}
	/**
	 * 话题列表显示
	 */
	public function theme() {
		$m = D ( 'Activity' );
		$count = $m->count ();
		import ( 'ORG.Util.Page' );
		$page = new Page ( $count, 2 );
		$show = $page->show ();
		$arr = $m->relation ( true )->limit ( $page->firstRow . ',' . $page->listRows )->select ();
		$this->assign ( 'actyList', $arr );
		$this->assign ( 'show', $show );
		dump ( $arr );
		$this->display ();
	}
	
	/**
	 * 显示一条活动
	 */
	public function showOne() {
		$id = $_GET ['id'];
		$m = D ( 'Activity' );
		$where ['acty_id'] = $id;
		$acty = $m->relation ( true )->where ( $where )->find ();
		$this->assign ( "acty", $acty );
		
		dump ( $acty );
		
		$user = M ( 'User' );
		foreach ( $acty ['Activity_comment'] as $key => $value ) {
			$userid = $value ['userid'];
			$where ['userid'] = $userid;
			$commentUser = $user->where ( $where )->find ();
			$acty ['Activity_comment'] [$key] ['User'] = $commentUser;
		}
		
		// dump($fb);
		$this->assign ( "actyComment", $acty ['Activity_comment'] );
		$this->assign ( "userid", $_SESSION ['userid'] );
		$this->display ();
	}
}








