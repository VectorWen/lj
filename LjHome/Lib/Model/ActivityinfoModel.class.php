<?php
		class ActivityinfoModel extends RelationModel{
			protected $_auto=array(
					array('status',1),
					array('userid','getId',1,'callback')
						
			);
		
			protected $_link=array(
					'User'=> array(
							'mapping_type'=>BELONGS_TO,
							'class_name'=>'User',
							'foreign_key'=>'userid',
							'mapping_name'=>'user',
						
					),
						
		
			); 
		
			protected function getId(){
				return $_SESSION['userid'];
			}
		}
?>