<?php
class LoginAction extends Action {
	
	/**
	 * 登录
	 */
	public function login() {
		//如果没有同时输入密码和账号，就是不登陆
		if(!isset($_POST['adminid'])||!isset($_POST['password'])){
			$this->display ();
			exit();
		}
		$adminid = $_POST['adminid'];
		$password = $_POST['password'];
		
		$admin=M('admin');
		$where['adminid'] = $adminid;
		$where['password'] = md5($password);
		$count=$admin->where($where)->count();
		if($count>0){
			$_SESSION['adminid']=$adminid;
			$this->success('登录成功',U('Index/index'));
		}else{
			$this->error('用户名错误或密码错误！');
		}
		
	}
	/**
	 * 注销
	 */
		public function doLogout(){
			$_SESSION=array();
				if(isset($_COOKIE[session_name()])){
					setcookie(session_name(),'',time()-1,'/');
				}
			session_destroy();
			$this->redirect('Index/index');
		}
	
}