<?php
	 class WebsiteModel extends Model
	{
		public function getinfo($group)
		{
			$m=M('Website');
			$where['group']=$group;
			$arrselect=$m->where($where)->select();
			
			//整理数据库键对值
			foreach($arrselect as $k=>$val)
			{
				$arr[$val['key']]=$val['value'];
			}
			return $arr;
		}
	}
?>