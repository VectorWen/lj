<?php
		class SourceModel extends RelationModel{
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
							'mapping_fields'=>'username',
							'as_fields'=>'username',
					),
						
		
			); 
		
			protected function getId(){
				return $_SESSION['userid'];
			}
		}
?>