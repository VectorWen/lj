<?php

/**
	 * 判断有没有登录
	 * @author vector
	 *
	 */
class CommonAction extends Action {
	public function _initialize() {
		// 初始化的时候检查用户权限
		if (! isset ( $_SESSION ['userid'] ) || $_SESSION ['userid'] == '') {
			$this->isLogin = false; //如果没有登录
		}else{
			$this->isLogin = true; //登录了
		}
	}
}
?>
