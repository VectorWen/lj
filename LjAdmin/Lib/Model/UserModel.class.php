<?php
	class UserModel extends Model{
		protected $_auto=array(
				array('password','setpassword',1,'callback'),
				array('level','0'),
					
		);
		
		protected $_validate=array(
				array('userid','require','学号必须填写'),
				array('userid','','学号已存在',0,'unique',1),
				array('userid','/[a-zA-Z0-9]\w{7,}/','学号必须8个字母以上',0,'regex',1),
		);
		
		protected function setpassword()
		{
			return md5("wyulj123");
		}
		
		
	}
?>
