<?php
// 本类由系统自动生成，仅供测试用途
	class IndexAction extends Action {
		//显示首页数据
		public function index() {
			$this->source();
			$this->showpicture();
			$this->slide();
			$this->ann();
			$this->contact();
			$this->link();
			$this->news();
			$this->activity();
			$this->hotbook();
			$this->display();
		}
		
		/*
		 * 联系我们
		 */
		function contact()
		{
				$group='contact';
				$websiteModel=new WebsiteModel();
				$contact=$websiteModel->getinfo($group);
				$this->assign("contact",$contact);
		}
		
		/*
		 * 幻灯片
		 */
		function slide()
		{
			$m=M('Article');
			$field="articleid,title,slidepicture";
			$limit=5;
			$article=$m->field($field)->where('slidestatus=1')
				->order('addtime desc')->limit($limit)->select();
			//整理查询出来的数组，把数组组合成swf识别的形式，
			//如：__PUBLIC__/Images/Article/pic.jpg|__PUBLIC__/Images/Article/pic.jpg循环5个
			$pics="__PUBLIC__/Uploads/Article/".$article[0]['slidepicture'];
			$texts="".$article[0]['title'];
			$links="__APP__/Article/detail/articleid/"
					.$article[0]['articleid'];
			for($i=1;$i<5;$i++)
			{
				$pics=$pics."|__PUBLIC__/Uploads/Article/"
						.$article[$i]['slidepicture'];
				$texts=$texts."|".$article[$i]['title'];
				$links=$links."|__APP__/Article/detail/articleid/"
						.$article[$i]['articleid'];
				
			}
			$slide['pics']=$pics;
			$slide['texts']=$texts;
			$slide['links']=$links; 
			
			$this->assign('slide',$slide);
		}
		/*
		 * 同乡新闻
		 */
		function news()
		{
			$m=M('Article');
			$field="articleid,title,addtime";
			$news=$m->field($field)->where('classid=1')->order('priority,addtime desc')->limit(5)->select();
			$this->assign("news",$news);
		}
		
		/*
		 * 同乡公告
		 */
		function ann()
		{
			$m=M('Article');
			$field="articleid,title,addtime";
			$ann=$m->field($field)->where('classid=0')->order('priority,addtime desc')->limit(5)->select();
			$this->assign("ann",$ann);
		}
		
		/*
		 * 同乡风采展示
		 */
		function showpicture()
		{
			$m=M('Showpicture');
			$where="status=1";
			$order="showpictureid desc";
			$limit=10;
			$showpicture=$m->where($where)->order($order)->limit($limit)->select();
			$this->assign('showpicture',$showpicture);
		}
		
		/*
		 * 同乡活动
		 */
		function activity()
		{
			$m=M('Activity');
			$field="activityid,title,begintime";
			$activity=$m->field($field)->where('status=0')->order('priority,begintime desc')->limit(4)->select();
			$this->assign("activity",$activity);
		}
		
		/*
		 * 资源共享
		 */
		function source()
		{
			$d=D('Source');
			$field="sourceid,showname";
			$where['status']=0;
			$source=$d->field($field)->where($where)->order('downloadcount desc')->limit(5)->select();
			if($source>0){
				$this->assign("source",$source);
			}
		}
		/*
		 * 热门书籍
		 */
		public function hotbook()
		{
			$book=D("Borrow");
			$arr=$book->order("borrowid desc")->Relation(true)->limit(4)->select();
			$this->assign("book",$arr);
		}
		
		/*
		 * 热门话题
		 */
		public function discuss()
		{
			
		}
		
		
		/*
		 * 友情链接
		 */
		function link()
		{
			$m=M('Link');
			$link=$m->where("linkstatus=0")->order('linkid')->limit(5)->select();
			$this->assign("link",$link);
		}
		
	}
	?>