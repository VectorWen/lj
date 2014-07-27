<?php
class FeedbackModel extends RelationModel {
	protected $_link = array (
			'Feedback_comment' => HAS_MANY,
			'User' => BELONGS_TO,
	);
}
?>