<?php
	class AdminAction extends CommonAction
	{
		//获取管理员列表
		function adminlist()
		{
			$admin=D("Admin");
			import('ORG.Util.Page');// 导入分页类
			$count=$admin->count();//获取数据的总数
			$page  = new Page($count,10);//
			$page->setConfig('header','个');
			$page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
				%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
			$show=$page->show();//返回分页信息
			$arr=$admin->limit($page->firstRow.','.$page->listRows)->select();
			$this->assign('show',$show);
			$this->assign("admin",$arr);
			$this->display();
		}
		
		//获取添加管理员UI
		function getaddAdminUI()
		{
			$this->display(addadmin);
		}
		
		/*
		 * 获取管理员
		 */
		function getAdmin()
		{
			$adminid=$_GET['adminid'];
			$where['adminid']=$adminid;
			$d=D("admin");
			$arr=$d->where($where)->select();
			if($arr!=null)
			{
				$this->assign("admin",$arr);
				$this->display(admininfo);
			}
			else
			{
				$this->error("无法获取该管理员，请刷新页面重试");
			}
		}
		
		/*
		 * 删除管理员
		 */
		function deladmin()
		{
			$adminid= $_POST['adminid'];
			if($adminid)
			{
				$where['adminid']=array('in',$adminid);
				$d=D("admin");
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
		 * 修改管理员信息
		 */
		function saveadmin()
		{
			$d=D("admin");
			$where['adminid']=$_POST['adminid'];
			$d->adminname=$_POST['adminname'];
			
			$count=$d->where($where)->save();
			if($count>0)
			{
				$this->success("修改管理员信息成功");
			}
			else 
			{
				$this->error("修改管理员信息失败");
			}
			
		}
		function getpasswordUI()
		{
			$this->display(updatepassword);
		}
		
		/*
		 * 修改密码
		 */
		function updatePassword()
		{
			$d=D("Admin");
			$adminid=$_SESSION['adminid'];
			$where['adminid']=$adminid;
			$where['password']=md5($_POST['oldpassword']);
			
			$arr['adminid']=$adminid;
			$data['password']=md5($_POST['newpassword']);
			$count=$d->where($where)->count();
			if($count>0)
			{
				$d->where($arr)->save($data);
				$this->success("修改密码成功,下次登录请使用新密码");
			}
			else 
			{
				$this->error("原密码不正确");
			}
			
		}
		
		/*
		 * 获取添加管理员ui
		 * 
		 */
		function getaddadmin()
		{
			$this->display(addadmin);
		}
		
		/*
		 * 添加单个管理员
		 */
		function addadmin()
		{
			$d=D("Admin");
		 	//$bool=$d->create($_POST,1);
		 	 if(!$d->create($_POST,1)){
		 		$this->error($d->getError());
		 	} 
		 	
			$count=$d->add();
			if($count)
			{
				$this->success("添加管理员成功");
			}
			else
			{
				$this->error("添加管理员失败");
			} 
		}
		
		
		public function checkId(){
			$adminid=$_GET['adminid'];
			$admin=M('Admin');
			$where['adminid']=$adminid;
			$count=$admin->where($where)->count();
			if($count){
				echo '不允许';
			}else{
				echo '允许';
			}
		}
		
	}
?>