<?php
	class ArticlereviewModel extends RelationModel{

		protected $_auto=array(
				array('addtime','time',1,'function'),
				array('userid','getId',1,'callback')
			
		);

		protected $_link=array(
			'User'=> array(  
     			'mapping_type'=>BELONGS_TO,
          		'class_name'=>'User',
          		'foreign_key'=>'userid',
				'mapping_name'=>'user',
				'mapping_fields'=>'username,middlepicture',
				'as_fields'=>'username,middlepicture',
			),
			
		
		);
		
		protected $_validate=array(
				array('code','require','验证码必须填写!'),
				array('code','checkCode','验证码错误!',0,'callback',1),
				array('content','require','评论内容必须填写!'),
				/* array('username','','用户已经存在',0,'unique',1),
				array('username','/^\w{6,}$/','用户名必须6个字母以上',0,'regex',1),
				array('repassword','password','确认密码不正确',0,'confirm'), */
		);
		
		protected function checkCode($code)
		{
			if(md5(strtolower($code))!=$_SESSION['code'])
			{
				return false;
			}
			else
			{
				return true;
			}
		}
		
		protected function getId()
		{
			return $_SESSION['userid'];
		}
		
		
	}
		

		
?>
