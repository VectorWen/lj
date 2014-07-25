<?php
	class AdminModel extends Model{
		protected $_auto=array(
				array('password','md5',1,'function') ,
				array('level','2'),
					
		);
		
		protected $_validate=array(
				array('adminid','require','学号必须填写'),
				array('password','require','密码必须填写'),
				//array('adminid','','账号已存在',0,'unique',1),
				array('userid','/[a-zA-Z0-9]\w{4,}/','账号必须5个字母以上',0,'regex',1),
		);
		
	}
?>
