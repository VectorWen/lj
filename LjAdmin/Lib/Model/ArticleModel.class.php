<?php
	class ArticleModel extends RelationModel{
		protected $_auto=array(
				array('addtime','time',1,'function'),
				array('adminid','getId',1,'callback'),
				array('priority','3'),
				array('viewcount','1'),
				array('articlestatus','0'),
					
		);
		
		
		protected $_link=array(
			'Class'=> array(
						'mapping_type'=>BELONGS_TO,
						'class_name'=>'Class',
						'foreign_key'=>'classid',
						'mapping_name'=>'name',
						'mapping_fields'=>'name',
						'as_fields'=>'name',
				),
			'Admin'=> array(
						'mapping_type'=>BELONGS_TO,
						'class_name'=>'Admin',
						'foreign_key'=>'adminid',
						'mapping_name'=>'adminname',
						'mapping_fields'=>'adminname',
						'as_fields'=>'adminname',
				),
		
		);
		
		protected $_validate=array(
				array('title','require','标题必须填写!'),
				array('content','require','新闻内容必须填写!'),
		);
		
		protected function getId()
		{
			return $_SESSION['adminid'];
		}
		
	}
?>
