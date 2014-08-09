<?php
/**
	 * 反馈
	 * @author vector
	 *
	 */
class FeedbackAction extends NeedLoginAction {
	/**
	 * 反馈的显示 all,一页12 条
	 */
	public function index() {
		$m = D ( 'Feedback' );
		$count = $m->count ();
		import ( 'ORG.Util.Page' );
		$Page = new Page ( $count, 12 );
		$show = $Page->show ();
		$arr = $m->relation ( true )->limit ( $Page->firstRow . ',' . $Page->listRows )->select ();
		$this->assign ( "fbList", $arr );
		$this->assign ( "show", $show );
	// dump($arr);
		$this->display ();
	}
	/**
	 * 显示自己的反馈
	 */
	public function user() {
		$m = D ( 'Feedback' );
		$count = $m->where ( 'userid = ' . $_SESSION ['userid'] )->count ();
		import ( 'ORG.Util.Page' );
		$Page = new Page ( $count, 12 );
		$show = $Page->show ();
		$arr = $m->relation ( true )->limit ( $Page->firstRow . ',' . $Page->listRows )->where ( 'userid=' . $_SESSION ['userid'] )->select ();
		$this->assign ( "fbList", $arr );
		$this->assign ( "show", $show );
		
		// dump($arr);
		$this->display ();
	}
	/**
	 * 显示单条反馈
	 */
	public function showOne() {
		$id = $_GET ['id'];
		$m = D ( 'Feedback' );
		$where ['feedback_id'] = $id;
		$fb = $m->relation ( true )->where ( $where )->find ();
		$this->assign ( "fb", $fb );
		
		$user = M ( 'user' );
		foreach ( $fb ['Feedback_comment'] as $key => $value ) {
			$userid = $value ['userid'];
			$where ['userid'] = $userid;
			$commentUser = $user->where ( $where )->find ();
			$fb ['Feedback_comment'] [$key] ['User'] = $commentUser;
		}
		
		//dump($fb);
		$this->assign ( "fbComment", $fb ['Feedback_comment'] );
		$this->assign ( "userid", $_SESSION['userid'] );
		$this->assign ( "type", $_GET['type'] );
		$this->display ();
	}
	/**
	 * 删除反馈，只能是自己写的
	 */
	public function delete() {
		$id = $_GET ['id'];
		$fb = D ( 'Feedback' );
		$where ['feedback_id'] = $id;
		$where ['userid'] = $_SESSION ['userid'];
		$ok = $fb->relation ( true )->where ( $where )->delete ();
		echo $ok;
		if (ok > - 1) {
			$this->redirect ( "Feedback/index" );
		} else {
			$this->error ( "删除失败" );
		}
	}
	/**
	 * 添加反馈
	 */
	public function add() {
		
		if (! isset ( $_POST ['title'] ) || ! isset ( $_POST ['content'] ) || $_POST ['title'] == "" || $_POST ['content'] == "") {
			$this->display ();
			exit ();
		}
		
		$title = $_POST ['title'];
		$content = $_POST ['content'];
		$at = $_POST ['at'];
		
		$data ['title'] = $title;
		$data ['content'] = $content;
		$data ['userid'] = $_SESSION ['userid'];
		$data ['time'] = time ();
		$data ['at'] = $at;
		
		$fb = M ( 'Feedback' );
		$ok = $fb->data ( $data )->add ();
		if ($ok > 0) {
			$this->redirect ( "Feedback/user" );
		} else {
			$this->error ( "添加失败" );
		}
	}
	/**
	 * 添加评论
	 */
	public function addComment() {
		if (! isset ( $_POST ['id'] ) || ! isset ( $_POST ['content'] ) || $_POST ['id'] == "" || $_POST ['content'] == "") {
			
			$this->error("请输入评论内容");;
			exit();
		}
		
		$data['userid'] = $_SESSION['userid'];
		$data['feedback_id'] = $_POST['id'];
		$data['at'] = $_POST['at'];
		$data['content'] = $_POST['content'];
		$data['time'] = time();
		
		$fbc = M('Feedback_comment');
		
		$ok = $fbc->data($data)->add();
		
		if($ok>0){
			$this->success("评论成功");
		}else{
			$this->error("评论失败");
		}
		
		
	}
	/**
	 * 删除评论，只能是自己的
	 */
	public function delComment() {
		$id = $_GET ['id'];
		$fbc = M ( 'Feedback_comment' );
		$where ['comment_id'] = $id;
		$where ['userid'] = $_SESSION ['userid'];
		$ok = $fbc->where ( $where )->delete ();
		echo $ok;
		if (ok > - 1) {
			$this->success("删除成功");
		} else {
			$this->error ( "删除失败" );
		}
	}
}