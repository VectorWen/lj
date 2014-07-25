<?php
		class SourceModel extends RelationModel{
		
			protected $_link=array(
					'User'=> array(
							'mapping_type'=>BELONGS_TO,
							'class_name'=>'User',
							'foreign_key'=>'userid',
							'mapping_name'=>'user',
							'mapping_fields'=>'username',
							'as_fields'=>'username',
					),
						
		
			);
		
		}
?>