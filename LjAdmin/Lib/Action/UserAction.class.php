<?php
	class UserAction extends CommonAction
	{
		//获取用户列表
		function userlist()
		{
			$this->display();
		}
		
		/*
		 * 搜索用户
		 */
		function searchUser()
		{
			import('ORG.Util.Page');// 导入分页类
		   	 $where['userid']=array('like',"%".$_POST['key']."%");
		   	 $where['username']=array('like',"%".$_POST['key']."%");
		   	 $where['_logic']='or';
		   	 $m=M("User");
		   	 $count=$m->where($where)->count();//获取数据的总数
		   	 $page  = new Page($count,20);//
		   	 $page->setConfig('header','个用户');
		   	 $page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
					%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
		   	 $show=$page->show();//返回分页信息
		   	 $arr=$m->where($where)->limit($page->firstRow.','.$page->listRows)->select();
		   	 $this->assign('show',$show);
		   	 $this->assign("user",$arr);
		   	 $this->display(userlist);
		  
		}
		
		/*
		 * 获取用户
		 */
		function getUser()
		{
			$userid=$_GET['userid'];
			$where['userid']=$userid;
			$m=M("User");
			$arr=$m->where($where)->select();
			if($arr!=null)
			{
				$this->assign("user",$arr);
				$this->display(userdetail);
			}
			else
			{
				$this->error("无法获取该用户，请刷新页面重试");
			}
		}
		
		/*
		 * 删除用户
		 */
		function delUser()
		{
			$userid= $_POST['userid'];
			if($userid)
			{
				$where['userid']=array('in',$userid);
				$d=D("User");
				$count=$d->where($where)->delete();
				if($count>0)
				{
					$this->success("删除成功！！");
				}else
				{
					$this->error("删除失败！！");
				}
			}
			else
			{
				$this->error("请选择文章！！");
			}
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
		 * 重置密码
		 */
		function resetPassword()
		{
			$d=D("User");
			$where['userid']=$_POST['userid'];
			$d->password=md5("wyulj123");
			
			$count=$d->where($where)->save();
			if($count>0)
			{
				$this->success("重置密码成功");
			}
			else 
			{
				$this->error("重置密码失败");
			}
			
		}
		
		/*
		 * 获取添加用户ui
		 * 
		 */
		function getadduserui()
		{
			$this->display(adduserui);
		}
		
		/*
		 * 添加单个用户
		 */
		function addUser()
		{
			$d=D("User");
		 	$d->create();
		 	if(!$d->create()){
		 		$this->error($d->getError());
		 	}
		/* 	$d->userid=$_POST['userid'];
			$d->username=$_POST['username'];
			$d->sex=$_POST['sex'];
			$d->specialty=$_POST['specialty'];
			$d->schooladdress=$_POST['schooladdress'];
			$d->homeaddress=$_POST['homeaddress'];
			$d->phone=$_POST['phone'];
			$d->shortphone=$_POST['shortphone'];
			$d->entryyear=$_POST['entryyear']; 
				*/
			$count=$d->add();
			if($count)
			{
				$this->success("添加用户成功");
			}
			else
			{
				$this->error("添加用户失败");
			} 
		}
		
		/*
		 * 导入用户
		 */
		function includeUsers()
		{
			import('ORG.Net.UploadFile');
			$upload = new UploadFile();// 实例化上传类
			$upload->allowExts  = array('xls', 'xlsx');// 设置附件上传类型
			$upload->savePath =  './Public/Uploads/';// 设置附件上传目录
			if(!$upload->upload()) {// 上传错误提示错误信息
				$this->error($upload->getErrorMsg());
			}else{// 上传成功 获取上传文件信息
				$info =  $upload->getUploadFileInfo();
			}
			
			$filename=$info[0]['savename'];
			$file_path='./Public/Uploads/'.$filename;
			Vendor('Classes.PHPExcel');
			$objPHPExcel = PHPExcel_IOFactory::load($file_path);
			$arrExcel = $objPHPExcel->getSheet(1)->toArray();
			
			//删除不要的表头部分，我的有三行不要的，删除三次
			
			array_shift($arrExcel);//现在可以打印下$arrExcel，就是你想要的数组啦
			//查询数据库的字段
			$d = D("User");
			$fieldarr = $d->query("describe lj_User");
			
			foreach($fieldarr as $v){
				$field[] = $v['Field'];
			}
			
			unset($field[2]); //去掉用户密码
			unset($field[10]); //去掉用户大头像
			unset($field[11]); //去掉用户中头像
			unset($field[12]); //去掉用户小头像
			unset($field[13]); //去掉用户级别
			
			//循环给数据字段赋值
			foreach($arrExcel as $v){
				$fields[] = array_combine($field,$v);//将excel的一行数据赋值给表的字段
			}
			//批量插入
			$ids = $d->addAll($fields);
			unlink($file_path);
			if(!$ids)
			{
				$this->error("没有添加数据,有重复项或数据格式不正确");
			}
			$this->success('添加成功');
			
		}
		
		public function checkId(){
			$userid=$_GET['userid'];
			$user=M('User');
			$where['userid']=$userid;
			$count=$user->where($where)->count();
			if($count){
				echo '不允许';
			}else{
				echo '允许';
			}
		}
		
	}
?>