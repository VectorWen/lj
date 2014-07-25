<?php
	class ArticleModel extends RelationModel{

		protected $_link=array(
			'Admin'=> array(  
     			'mapping_type'=>BELONGS_TO,
          		'class_name'=>'Admin',
          		'foreign_key'=>'adminid',
				'mapping_name'=>'admin',
				'mapping_fields'=>'adminname',
				'as_fields'=>'adminname',
			),
			
			'Class'=> array(
						'mapping_type'=>BELONGS_TO,
						'class_name'=>'Class',
						'foreign_key'=>'classid',
						'mapping_name'=>'name',
						'mapping_fields'=>'name',
						'as_fields'=>'name',
				),
		
		);
		
	}
?>
