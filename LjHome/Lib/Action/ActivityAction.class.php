<?php
class ActivityAction extends Action {
	
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
		
		dump($acty);
		
		$user = M ( 'User' );
		foreach ( $acty ['Activity_comment'] as $key => $value ) {
			$userid = $value ['userid'];
			$where ['userid'] = $userid;
			$commentUser = $user->where ( $where )->find ();
			$acty ['Activity_comment'] [$key] ['User'] = $commentUser;
		}
		
		// dump($fb);
		$this->assign ( "actyComment",$acty ['Activity_comment'] );
		$this->assign ( "userid", $_SESSION ['userid'] );
		$this->display ();
	}
}








