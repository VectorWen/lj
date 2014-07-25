<?php
		class BorrowModel extends RelationModel{
		
			protected $_link=array(
					'offer'=> array(
							'mapping_type'=>BELONGS_TO,
							'class_name'=>'User',
							'foreign_key'=>'offerid',
							'as_fields'=>'username:offeruser',
					),
					'borrower'=> array(
							'mapping_type'=>BELONGS_TO,
							'class_name'=>'User',
							'foreign_key'=>'borrowerid',
							'as_fields'=>'username:borroweruser',
					),
					'Book'=> array(
							'mapping_type'=>BELONGS_TO,
							'class_name'=>'Book',
							'foreign_key'=>'isbn',
							'mapping_name'=>'book',
					),
					
						
		
			);
			
		}
?>