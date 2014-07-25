<?php
	class ActivityModel extends Model{
		protected $_auto=array(
				array('begintime','strtotime',1,'function') ,
				array('endtime','strtotime',1,'function') ,c
		);
		
		protected $_validate=array(
				array('title','require','标题必须填写'),
				array('content','require','内容必须填写'),
				//array('adminid','','账号已存在',0,'unique',1),
				//array('userid','/[a-zA-Z0-9]\w{4,}/','账号必须5个字母以上',0,'regex',1),
		);
		 
	}
?>
