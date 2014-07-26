<?php
		return array(
				'TMPL_L_DELIM'=>'<{', //修改左定界符
				'TMPL_R_DELIM'=>'}>', //修改右定界符
				'DB_PREFIX'=>'Lj_',  //设置表前缀
				'DB_DSN'=>'mysql://root:123456@localhost:3306/huanglw',//使用DSN方式配置数据库信息
				'SHOW_PAGE_TRACE'=>true,//开启页面Trace 
				'TMPL_PARSE_STRING'=>array(           //添加自己的模板变量规则
					'__CSS__'=>__ROOT__.'/Public/Css',
					'__JS__'=>__ROOT__.'/Public/Js',
					'__IMAGES__'=>__ROOT__.'/Public/Images',
					'__BUTTON__'=>__ROOT__.'/Public/Images/Button',
				), 
				'URL_CASE_INSENSITIVE'=>true,//url不区分大小写 
				'URL_HTML_SUFFIX'=>'html|shtml|xml|htm',//限制伪静态的后缀 
				'VAR_PAGE'=>'page', //设置分页显示URL 
		);
?>