<?php
class ArticleAction extends Action
{
	
	public function index() 
	{
		
	}
	/*
	 * 新闻详细内容
	 */
	function detail()
	{
		//新闻内容
		$articleid=$_GET['articleid'];
		$userid=$_SESSION['userid'];
		
		$article=D('Article');
		$where['articleid']=$articleid;
		$news=$article->where($where)->relation(true)->select();
		$this->assign('news',$news);
		$data['viewcount']=$news[0]['viewcount']+1;
		$article->where($where)->save($data);
		
		
		//评论内容
		$articlereview=$this->getarticlereview($articleid);
		$this->assign('articlereview',$articlereview);
		
		$users=$this->getuser($userid);
		$this->assign('user',$users);
		
		$this->display();
	}
	/*
	 * 新闻详细列表
	 */
	function newslist()
	{
		$news=$this->articlelist(1);
		$this->assign('news',$news);
		$this->display();
	}
	
	/*
	 * 公告详细列表
	 */
	function annlist()
	{
		$ann=$this->articlelist(0);
		$this->assign('ann',$ann);
		$this->display();
	}
	
	/*
	 * 获取文章列表
	 */
	function articlelist($classid)
	{
		$where['classid']=$classid;
		$m=D('Article');
		import('ORG.Util.Page');// 导入分页类
		$count=$m->where($where)->count();//获取数据的总数
		$page  = new Page($count,10);//
		$page->setConfig('header','篇');
		$page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
				%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
		$show=$page->show();//返回分页信息
		$article=$m->where($where)->order('priority,addtime desc')->relation(true)->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign('show',$show);
		return $article;
	}
	
	/*
	 * 获取文章评论
	 */
	function getarticlereview($articleid)
	{
		import('ORG.Util.Page');// 导入分页类
		$where['articleid']=$articleid;
		$review=D('Articlereview');
		$count=$review->where($where)->count();//获取数据的总数
		$page  = new Page($count,5);//
		$page->setConfig('header','条评论');
		$page->setConfig('theme',"共%totalRow% %header%  %upPage% %downPage% %first% %prePage% %linkPage%
				%nextPage% %end% 第 %nowPage%/%totalPage% 页  ");
		$show=$page->show();//返回分页信息
		$articlereview=$review->where($where)->order('addtime desc')->relation(true)->limit($page->firstRow.','.$page->listRows)->select();
		$this->assign('show',$show);
		return $articlereview;
	}
	
	function getuser($userid)
	{
		$where['userid']=$userid;
		$user=D('User');
		$users=$user->where($where)->select();
		return $users;
	}
	
	
	/*
	 * 搜索文章
	 */
	function search()
	{
		$key=$_POST['key'];
		$d=D("Article");
		$where['title']=array('like','%'.$key.'%');
		/* $where['content']=array('like','%'.$key.'%');
		$where['_logic']='or'; */
		$arr=$d->where($where)->relation(true)->select(); 
		
		$this->assign("news",$arr);
		$this->display(newslist);
	}
}

?>