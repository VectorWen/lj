<?php
function time2str($time){
	$long = time() - $time;
	
	if($long<60)
		return (int)$long."秒前";
	if($long<3600){
		$minute = $long/60;
		return (int)$minute."分钟前";
	}
	if($long<60*60*24){
		$hour = $long/3600;
		return (int)$hour."小时前";
	}
	if($long<60*60*24*30){
		$day = $long/(3600*24);
		return (int)$day."天前";
	}
	if($long<60*60*24*30*12){
		$month = $long/(3600*24*30);
		return (int)$month."月前";
	}
		
	$year = $long/(3600*24*30*12);
		return (int)$year."年前";

}