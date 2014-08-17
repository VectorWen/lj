<?php
function time2str($time) {
	$long = time () - $time;
	
	if ($long < 60)
		return ( int ) $long . "秒前";
	if ($long < 3600) {
		$minute = $long / 60;
		return ( int ) $minute . "分钟前";
	}
	if ($long < 60 * 60 * 24) {
		$hour = $long / 3600;
		return ( int ) $hour . "小时前";
	}
	if ($long < 60 * 60 * 24 * 30) {
		$day = $long / (3600 * 24);
		return ( int ) $day . "天前";
	}
	if ($long < 60 * 60 * 24 * 30 * 12) {
		$month = $long / (3600 * 24 * 30);
		return ( int ) $month . "月前";
	}
	
	$year = $long / (3600 * 24 * 30 * 12);
	return ( int ) $year . "年前";
}

/**
 * 删除一个目录，和目录下的文件
 *
 * @param unknown $dir        	
 */
function deleteDir($path) {
	if (is_dir ( $path )) {
		$file_list = scandir ( $path );
		foreach ( $file_list as $file ) {
			if ($file != '.' && $file != '..') {
				deleteDir ( $path . '/' . $file );
			}
		}
		@rmdir ( $path ); // 这种方法不用判断文件夹是否为空, 因为不管开始时文件夹是否为空,到达这里的时候,都是空的
	} else {
		@unlink ( $path ); // 这两个地方最好还是要用@屏蔽一下warning错误,看着闹心
	}
	
	return true;
}


