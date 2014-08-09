<?php
class FeedbackModel extends RelationModel {
	protected $_link = array (
			'Feedback_comment' => array (
					'mapping_type' => HAS_MANY,
					'class_name' => 'Feedback_comment',
					'foreign_key' => 'feedback_id',
					'mapping_name' => 'Feedback_comment',
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