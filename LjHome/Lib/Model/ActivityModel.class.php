<?php
	class ActivityModel extends RelationModel{
		protected $_link=array(
			'Admin'=> array(  
     			'mapping_type'=>BELONGS_TO,
          		'class_name'=>'Admin',
          		'foreign_key'=>'adminid',
				'mapping_name'=>'admin',
				'mapping_fields'=>'adminname',
				'as_fields'=>'adminname',
			),
		);
		
	}
?>
