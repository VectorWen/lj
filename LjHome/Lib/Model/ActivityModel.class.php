<?php
class ActivityModel extends RelationModel {
	protected $_link = array (
			'Activity_comment' => array (
					'mapping_type' => HAS_MANY,
					'class_name' => 'Activity_comment',
					'foreign_key' => 'comment_id',
					'mapping_name' => 'Activity_comment',
			),
			'User' => array (
					'mapping_type' => BELONGS_TO,
					'class_name' => 'User',
					'foreign_key' => 'userid',
					'mapping_name' => 'User',
			),
	);
}
?>
