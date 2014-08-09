<?php

/**
	 * 全部Action 类都必须从这个类继承
	 * @author vector
	 *
	 */
class NeedLoginAction extends Action {
	public function _initialize() {
		// 初始化的时候检查用户权限
		if (! isset ( $_SESSION ['userid'] ) || $_SESSION ['userid'] == '') {
			$refer = 'http://' . $_SERVER ['HTTP_HOST'] . $_SERVER ['REQUEST_URI'];
			cookie ( 'refer', $refer, 300 );
			$this->redirect ( 'Login/login' );
			$this->isLogin = false;
		}else{
			$this->isLogin = true;
		}
	}
}
?>
