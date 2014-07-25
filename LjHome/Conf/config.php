<?php
	$arr=include './Public/Conf/config.php';
	$arr2=array(
		//'配置项'=>'配置值'
			'LAYOUT_ON'=>true,//开启模板渲染
	);

	return array_merge($arr,$arr2);;
?>