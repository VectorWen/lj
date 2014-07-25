<?php
class LoginAction extends Action {
	
	/**
	 * 登录
	 */
	public function login() {
		//如果没有同时输入密码和账号，就是不登陆
		if(!isset($_POST['userid'])||!isset($_POST['password'])){
			$this->display ();
			exit();
		}
		$userid = $_POST['userid'];
		$password = $_POST['password'];
		
		$user=M('User');
		$where['userid'] = $userid;
		$where['password'] = md5($password);
		$count=$user->where($where)->count();
		if($count>0){
			$refer = cookie('refer');   
			if($refer == null)
			{
				$refer=U("Index/index");
			}
			$_SESSION['userid']=$userid;
			$this->success('登录成功',$refer);
		}else{
			$this->error('用户名错误或密码错误！');
		}
		
	}
	/**
	 * 注销
	 */
	public function logout() {
		$_SESSION=array();
		if(isset($_COOKIE[session_name()])){
			setcookie(session_name(),'',time()-1,'/');
			setcookie('refer','',time()-1,'/');
			cookie(null);
				}
			session_destroy();
			$this->redirect('Index/index');
	}
	
}