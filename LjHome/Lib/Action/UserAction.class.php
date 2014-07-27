<?php
class UserAction extends CommonAction {
	
	/**
	 * 个人资料
	 */
	public function index() {
		$user=D("User");
		$user_id=$_SESSION['user_id'];
		$where['user_id']=$user_id;
		$arr=$user->where($where)->select();  
		$this->assign("user",$arr);
		$this->display ();
	}
	
	/**
	 * 通信录
	 */
	public function address() {
			import('ORG.Util.Page');// 导入分页类
			$where['status']=0;
			$m = M("User");
			$count=$m->where($where)->count();//获取数据的总数
			$page  = new Page($count,25);//
			$page->setConfig('header','个同乡');
			$page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
					%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
			$show=$page->show();//返回分页信息
			$arr=$m->where($where)->order('username desc')->limit($page->firstRow.','.$page->listRows)->select();
			$this->assign('show',$show);
			$this->assign("user",$arr);
			$this->display ();
	}
	/**
	 * 订票
	 */
	public function reserve() {
		$this->display ();
	}
	
	/*
	 * 获取编辑头像UI
	 */
	public function headimg() {
		$this->display ();
	}
	
	/*
		 * 修改用户信息
		 */
		function saveUser()
		{
			
			$d=D("User");
			$where['userid']=$_POST['userid'];
			$d->username=$_POST['username'];
			$d->sex=$_POST['sex'];
			$d->specialty=$_POST['specialty'];
			$d->schooladdress=$_POST['schooladdress'];
			$d->homeaddress=$_POST['homeaddress'];
			$d->phone=$_POST['phone'];
			$d->shortphone=$_POST['shortphone'];
			$d->entryyear=$_POST['entryyear'];
			
			$count=$d->where($where)->save();
			if($count>0)
			{
				$this->success("修改用户信息成功");
			}
			else 
			{
				$this->error("修改用户信息失败");
			}
			
		}
	/*
	 * 编辑用户头像
	 */
	
	public function upfile() {
		$path ="./Public/Images/Head/";
		$userid=$_SESSION['userid'];
		$file_src = "src.png";
		$filename162 = $userid."_b.png";
		$filename48 = $userid."_m.png";
		$filename20 = $userid."_s.png";
	
		$src=base64_decode($_POST['pic']);
		$pic1=base64_decode($_POST['pic1']);
		$pic2=base64_decode($_POST['pic2']);
		$pic3=base64_decode($_POST['pic3']);
		
		if($src) 
		{
			file_put_contents($file_src,$src);
		}
		
		file_put_contents($path.$filename162,$pic1);
		file_put_contents($path.$filename48,$pic2);
		file_put_contents($path.$filename20,$pic3);
		$rs['status'] = 1;
		echo json_encode($rs);
		
		
		$user =D("User");
		$where['userid']=$userid;
		$user->bigpicture=$filename162;
		$user->middlepicture=$filename48;
		$user->smallpicture=$filename20;
		$count=$user->where($where)->save();
		if($count>0)
		{
			$this->success("更新头像成功");
		}
		else 
		{
			$this->error("更新头像失败");
		}
		
	}
	/*
	 * 获取用户
	 */
	public function getUser()
	{
		$user=D("User");
		$where['userid']=$_GET['userid'];
		$arr=$user->where($where)->select();
		$this->assign("user",$arr);
		$this->display(index);
		
	}
	
	/*
	 * 搜索用户
	 */
	public function search()
	{
		$key=$_GET['key'];
		$user=M("User");
		$where['userid']=array('like','%'.$key.'%');
		$where['username']=array('like','%'.$key.'%');
		$where['_logic']='or';
		$arr=$user->where($where)->select();
		
		$this->assign("user",$arr);
		$this->display(address);
	}
	
	
}