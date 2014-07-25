<?php
class BookAction extends CommonAction {
	/**
	 * 可借书列表
	 */
	public function index() {
		$where ['offerid'] = array (
				'neq',
				$_SESSION ['userid'] 
		);
		$where ['status'] = 0;
		$borrow = D ( "Borrow" );
		$count = $borrow->where ( $where )->count ();
		import ( "ORG.Util.Page" );
		$Page = new Page ( $count, 10 );
		$show = $Page->show (); // 可以拿到分页脚本
		$books = $borrow->limit ( $Page->firstRow . ',' . $Page->listRows )->where ( $where )->relation ( true )->select (); // 可以查找到指定数量
		                                                                                                                     
		 //dump($books);
		
		$this->assign ( "show", $show );
		$this->assign ( "books", $books );
		
		$this->display ();
	}
	
	/**
	 * 我的借架 -- 查找, 如果数据库有这本书就在数据库拿，不然就到网上找<P>
	 */
	public function searchbook() {
		$isbn = $_GET ["isbn"];
		$book = M ( "Book" );
		$where ['isbn'] = $isbn;
		$book = $book->where ( $where )->find ();
		if (! isset ( $book )) {
			$json = file_get_contents ( 'http://api.douban.com/v2/book/isbn/:' . $isbn );
			$obj_book = json_decode ( $json );
			
			$book ['bookname'] = $obj_book->title;
			$book ['author'] = $obj_book->author [0];
			$book ['price'] = $obj_book->price;
			$book ['cover'] = $obj_book->images->large;
			$book ['introduction'] = $obj_book->summary;
			$book ['isbn'] = $isbn;
		}
		
		$this->assign ( "book", $book );
		if ($book ['bookname'] == null) {
			if ($book ['isbn'] != null) {
				$this->assign ( "search", 2 );
			}
		} else {
			$this->assign ( "search", 1 );
		}
		
		$this->display ();
	}
	/**
	 * 我的借架--上传，不能上传同一本书
	 */
	public function addbook() {
		$book ['isbn'] = $_POST ['isbn'];
		$book ['author'] = $_POST ['author'];
		$book ['price'] = $_POST ['price'];
		$book ['cover'] = $_POST ['cover'];
		$book ['bookname'] = $_POST ['bookname'];
		$book ['introduction'] = $_POST ['introduction'];
		$m = M ( "Book" );
		$m->add ( $book );
		
		$borrow ['isbn'] = $_POST ['isbn'];
		$borrow ['offerid'] = $_SESSION ['userid'];
		$m = M ( "Borrow" );
		$count = $m->where ( $borrow )->count ();
		
		if ($count != 0) {
			$this->success ( "你已近上传过", U ( 'Book/mybook' ) );
			exit ();
		}
		
		$borrow ['status'] = 0;
		
		if ($m->add ( $borrow ) > 0) {
			$this->success ( "上传成功", U ( 'Book/mybook' ) );
		} else {
			$this->error ( "上传失败" );
		}
	}
	/**
	 * 我的借架--删除
	 */
	public function deletebook() {
		$where ["borrowid"] = $_GET ['borrowid'];
		$where ["offerid"] = $_SESSION ['userid'];
		$m = M ( "Borrow" );
		
		if ($m->where ( $where )->delete () > 0) {
			$this->success ( "删除成功" );
		} else {
			$this->error ( "删除失败" );
		}
	}
	/**
	 * 我的借架--显示
	 */
	public function mybook() {
		$where ['offerid'] = $_SESSION ['userid'];
		$borrow = D ( "Borrow" );
		$count = $borrow->where ( $where )->count ();
		import ( "ORG.Util.Page" );
		$Page = new Page ( $count, 10 );
		$show = $Page->show (); // 可以拿到分页脚本
		$books = $borrow->limit ( $Page->firstRow . ',' . $Page->listRows )->where ( $where )->relation ( true )->select (); // 可以查找到指定数量
		                                                                                                                     
		// dump($books);
		
		$this->assign ( "show", $show );
		$this->assign ( "books", $books );
		
		$this->display ();
	}
	/**
	 * 搜索--显示
	 */
	public function search() {
		$bookname = $_POST ['key'];
		$this->show ( "没有找到和" . $bookname . "相关的书籍" );
	}
	/**
	 * 我的借架--详情
	 */
	public function details() {
		$where ["borrowid"] = $_GET ['borrowid'];
		$borrow = D ( "Borrow" );
		
		$book = $borrow->where ( $where )->relation ( true )->select ();
		
		if (isset ( $book [0] ))
			
			$this->assign ( "book", $book [0] );
		$this->display ();
	}
	
	/**
	 * 借书说明
	 */
	public function explain() {
		$group='book';
		$websiteModel= new WebsiteModel();
		$book=$websiteModel->getinfo($group);
		$this->assign('book',$book);
		$this->display ();
	}
	/**
	 * 已借的书
	 */
	public function borrow() {
		$where ['borrowerid'] = $_SESSION ['userid'];
		$borrow = D ( "Borrow" );
		$count = $borrow->where ( $where )->count ();
		import ( "ORG.Util.Page" );
		$Page = new Page ( $count, 10 );
		$show = $Page->show (); // 可以拿到分页脚本
		$books = $borrow->limit ( $Page->firstRow . ',' . $Page->listRows )->where ( $where )->relation ( true )->select (); // 可以查找到指定数量
		                                                                                                                     
		// dump($books);
		
		$this->assign ( "show", $show );
		$this->assign ( "books", $books );
		
		$this->display ();
	}
	/**
	 * 预订书
	 */
	public function reserve() {
		$where ['borrowid'] = $_GET ['borrowid'];
		$where ['offerid'] = array (
				'neq',
				$_SESSION ['userid'] 
		);
		$where ['status'] = 0;
		
		$borrow = M ( "Borrow" );
		$count = $borrow->where ( $where )->count ();
		if ($count <= 0) {
			$this->error ( "预订失败！" );
			exit ();
		}
		
		$borrowBook ['borrowid'] = $_GET ['borrowid'];
		$borrowBook ['status'] = 1;
		$borrowBook ['borrowerid'] = $_SESSION ['userid'];
		if ($borrow->where ( $where )->save ( $borrowBook ) > 0) {
			$this->success ( "预订成功" );
		} else {
			$this->error ( "预订失败！" );
		}
	}
	
	/**
	 * 退订书
	 */
	public function retreat() {
		$where ['borrowid'] = $_GET ['borrowid'];
		$where ['borrowerid'] = $_SESSION ['userid'];
		$where ['status'] = 1;
		
		$borrow = M ( "Borrow" );
		$count = $borrow->where ( $where )->count ();
		if ($count <= 0) {
			$this->error ( "退订失败！" );
			exit ();
		}
		
		$borrowBook ['borrowid'] = $_GET ['borrowid'];
		$borrowBook ['status'] = 0;
		$borrowBook ['borrowerid'] = "";
		if ($borrow->where ( $where )->save ( $borrowBook ) > 0) {
			$this->success ( "退订成功" );
		} else {
			$this->error ( "退订失败！" );
		}
	}
	/**
	 * 拒绝借书
	 */
	public function refuse() {
		$where ['borrowid'] = $_GET ['borrowid'];
		$where ['offerid'] = $_SESSION ['userid'];
		$where ['status'] = 1;
		
		$borrow = M ( "Borrow" );
		$count = $borrow->where ( $where )->count ();
		if ($count <= 0) {
			$this->error ( "拒绝出错" );
			exit ();
		}
		
		$borrowBook ['borrowid'] = $_GET ['borrowid'];
		$borrowBook ['status'] = 0;
		$borrowBook ['borrowerid'] = "";
		if ($borrow->where ( $where )->save ( $borrowBook ) > 0) {
			$this->success ( '已拒绝' );
		} else {
			$this->error ( "拒绝出错" );
		}
	}
	/**
	 * 确认借了
	 */
	public function borrowed() {
		$where ['borrowid'] = $_GET ['borrowid'];
		
		$borrow = M ( "Borrow" );
		$borrowBook = $borrow->where ( $where )->find ();
		
		if ($borrowBook == null) {
			$this->error ( "确认失败" );
			exit ();
		}
		
		if ($borrowBook ['borrowerid'] == $_SESSION ['userid']) {
			if ($borrowBook ['status'] == 3) {
				$borrowBook ['status'] = 4;
			} else {
				$borrowBook ['status'] = 2;
			}
		}
		if ($borrowBook ['offerid'] == $_SESSION ['userid']) {
			if ($borrowBook ['status'] == 2) {
				$borrowBook ['status'] = 4;
			} else {
				$borrowBook ['status'] = 3;
			}
		}
		if ($borrow->where ( $where )->save ( $borrowBook ) > 0) {
			$this->success ( "确认成功" );
		} else {
			$this->error ( "确认失败！" );
		}
	}
}

?>